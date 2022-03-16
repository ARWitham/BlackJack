//
//  BookCoverViewController.m
//  BlackJack
//
//  Created by eric white on 12/29/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import "BookCoverViewController.h"
#import "BlackJackAlertView.h"
#import <MediaPlayer/MediaPlayer.h>
#import "GGPropertyManager.h"
#import "AppDelegate.h"

@implementation BookCoverViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    slowIntroTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self
                                                    selector:@selector(launchPage) userInfo:nil repeats:NO];
}

-(void)displayMovie
{
    // here's the real deal
    NSString *moviePath = [[NSBundle mainBundle] pathForResource:@"BookCoverLoop_H264" ofType:@"mov"];
    NSURL *movieURL = [NSURL fileURLWithPath:moviePath];

    AVAsset *asset = [AVAsset assetWithURL:movieURL];
    AVPlayerItem *playerItem = [AVPlayerItem playerItemWithAsset:asset];
    AVPlayer *player = [AVPlayer playerWithPlayerItem:playerItem];
    AVPlayerLayer *playerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
    playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
    playerLayer.frame = self.view.frame;

    // configure the player
    [player seekToTime:kCMTimeZero];
    player.volume = 0;
    player.actionAtItemEnd = AVPlayerActionAtItemEndNone;

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(0,0,768,1024)];
    [button addTarget:self action:@selector(openBook) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:self.menuView];
    [self.view addSubview:button];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playerItemDidReachEnd:) name:AVPlayerItemDidPlayToEndTimeNotification object: player.currentItem];

    [self.view.layer addSublayer:playerLayer];
    [player play];

    // Play audio
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:@"Book Cover Loop" ofType:@"wav"];
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
    audioPlayer = [[AVAudioPlayer alloc]
              initWithContentsOfURL:audioURL
              error:nil];
    [audioPlayer play];

    // this will go somehwere else eventually
    self.relaxImageView.hidden = TRUE;
}

-(void)playerItemDidReachEnd: (NSNotification *) notification {
    AVPlayerItem *playerItem = (AVPlayerItem *) notification.object;
    [playerItem seekToTime:kCMTimeZero completionHandler:nil];
}

-(void)launchPage
{
    if ([GGPropertyManager isFirstLaunch]) {
        self.alertView = [[BlackJackAlertView alloc] initWithOption: NSBJFirstLaunch];
        [self.alertView setBackgroundColor:[UIColor clearColor]];
        self.alertView.delegate = self;
        self.alertView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
        [self.view addSubview:self.alertView];
        displayedFirstTime = TRUE;
    } else if (!displayedAudioWarning) {
        self.alertView = [[BlackJackAlertView alloc] initWithOption:NSBJAudioAnnouncement];
        [self.alertView setBackgroundColor:[UIColor yellowColor]];
        self.alertView.delegate = self;
        self.alertView.center = self.view.center;
        self.alertView.translatesAutoresizingMaskIntoConstraints = NO;
        [self.view addSubview:self.alertView];
        [self.view bringSubviewToFront:self.alertView];
        [self.view.leadingAnchor constraintEqualToAnchor:self.alertView.leadingAnchor].active = YES;
        [self.view.trailingAnchor constraintEqualToAnchor:self.alertView.trailingAnchor].active = YES;
        [self.view.safeAreaLayoutGuide.topAnchor constraintEqualToAnchor:self.alertView.topAnchor].active = YES;
        [self.view.safeAreaLayoutGuide.bottomAnchor constraintEqualToAnchor:self.alertView.bottomAnchor].active = YES;
        displayedAudioWarning = TRUE;
    }
}


-(IBAction)openBook
{
    // Fade fire audio audio
    [self doFireAudioFade];

    // Play the book creak
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:@"Book Creak" ofType:@"wav"];
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
    AVAudioPlayer *creakAudioPlayer = [[AVAudioPlayer alloc]
                          initWithContentsOfURL:audioURL
                          error:nil];
    [creakAudioPlayer play];
    
    [self performSegueWithIdentifier: @"OpenBookSegue" sender: self];
    
}

-(void)doFireAudioFade
{
    if (audioPlayer.volume > 0.1) {
        audioPlayer.volume = audioPlayer.volume - 0.1;
        [self performSelector:@selector(doFireAudioFade) withObject:nil afterDelay:.3];
    } else {
        // when the fade is complete, stop the player
        [audioPlayer stop];
    }
}

- (void)viewDidDisappear:(BOOL)animated {
    [self setBookCoverImage:nil];
    [self setRelaxImageView:nil];
    [super viewDidDisappear:animated];
}

-(IBAction)okButtonPress
{
    [self.alertView removeFromSuperview];
    
    if (!displayedAudioWarning)
    {
        [self launchPage];
        
    }
    else
    {
        [self displayMovie];
    }
}

-(IBAction)cancelButtonPress
{
    
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end

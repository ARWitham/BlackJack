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

	// Do any additional setup after loading the view.
    moviePlayer=[[MPMoviePlayerController alloc] initWithContentURL:movieURL];
    [moviePlayer.view setFrame:self.view.frame];
    [moviePlayer prepareToPlay];
    [moviePlayer setShouldAutoplay:TRUE];
    [moviePlayer setControlStyle:MPMovieControlStyleNone];
    [moviePlayer setRepeatMode:MPMovieRepeatModeOne];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(0,0,768,1024)];
    [button addTarget:self action:@selector(openBook) forControlEvents:UIControlEventTouchUpInside];
    
    [moviePlayer.view addSubview:button];
    [moviePlayer.view addSubview:self.menuView];
    [self.view addSubview:moviePlayer.view];
    
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

-(void)launchPage
{
    if ([GGPropertyManager isFirstLaunch])
    {
        CGRect frame = CGRectMake(0, 0, 768, 1024);
        alertView = [[BlackJackAlertView alloc] initWithFrame:frame];
        [alertView setSelectedAlertOption:NSBJFirstLaunch];
        [alertView setBackgroundColor:[UIColor clearColor]];
        alertView.delegate = self;
        [self.view addSubview:alertView];
        displayedFirstTime = TRUE;
    }
    else if (!displayedAudioWarning)
    {
        CGRect frame = CGRectMake(0, 0, 768, 1024);
        alertView = [[BlackJackAlertView alloc] initWithFrame:frame];
        [alertView setSelectedAlertOption:NSBJAudioAnnouncement];
        [alertView setBackgroundColor:[UIColor clearColor]];
        alertView.delegate = self;
        alertView.center = self.view.center;
        [self.view addSubview:alertView];
        displayedAudioWarning = TRUE;
    }
}


-(IBAction)openBook
{
    [moviePlayer stop];
    
    [moviePlayer.view removeFromSuperview];

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
    [alertView removeFromSuperview];
    
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

@end

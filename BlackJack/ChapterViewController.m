//
//  ChapterViewController.m
//  BlackJack
//
//  Created by eric white on 10/10/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import "AppDelegate.h"
#import "ChapterViewController.h"
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"
#import "BlackJackViewController.h"
#import "RootViewController.h"
//#import "ModelController.h"
#import <MediaPlayer/MediaPlayer.h>

static CGRect initialCloudViewRect, normalCloudViewRect, currentCloudView1Rect, currentCloudView2Rect;
static MPMoviePlayerController *moviePlayer;

static BOOL isInitialized = FALSE;

@interface ChapterViewController ()

@end

@implementation ChapterViewController
@synthesize moviePage;
@synthesize textPage;
@synthesize  chapterDelegate= _chapterDelegate;
@synthesize isFinalPage;

+(void) initialize
{
    if (!isInitialized)
    {
        initialCloudViewRect = CGRectMake(-3408, 0, 4176, 1024);
        currentCloudView1Rect = initialCloudViewRect;
        normalCloudViewRect = CGRectMake(-7584, 0, 4176, 1024);
        currentCloudView2Rect = normalCloudViewRect;
        isInitialized = TRUE;
    }
}

- (void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];

    if ([player isPlaying])
    {
        [player stop];
    }
    
    // Specify that the cloud rollover should stop. This is to prevent the recursive animation method
    // from being invoked while the VC is not displayed. Failure to do this will cause teh clouds to
    // accelerate because there are so many recursive calls updating the static positions
    stopCloudRollover=TRUE;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if(textPage != nil)
    {
        [self.bookPageView setImage:[UIImage imageWithContentsOfFile:textPage.textPagePath]];
        
        // There are some pages which will choose to not display a background
        if (textPage.backgroundPath != nil)
        {
            [self.bookPageBackgroundView setImage:[UIImage imageWithContentsOfFile:textPage.backgroundPath]];
        }

        // Add the clouds to the screen if necessary
        if(textPage.overlay == kBJCloundsOverlay)
        {
            stopCloudRollover = FALSE;
            [self displayCloudAnimation];
        }
        else if (textPage.overlay == kBJSnowOverlay)
        {
            [self displaySnowAnimation];
        }
        else if (textPage.overlay == kBJEmberOverlay )
        {
            [self displayEmberAnimation];
        }
        else if (textPage.overlay == kBJFireOverlay)
        {
            [self displayEmberAnimation];
            [self displayFogAnimation];
        }
        else if (textPage.overlay == kBJMotesOverlay)
        {
            [self displayMotesAnimation];
        }
        else if (textPage.overlay == kBJIrrationalHypothermiaOverlay)
        {
            [self displayIrrationalHypothermiaAnimation];
        }
        else if (textPage.overlay == kBJCopLightOverlay)
        {
            [self displayCopLightAnimation];
        }
        else if (textPage.overlay == kBJPageFadeIn)
        {
            [self displayPageFadeIn];
        }
        else if (textPage.overlay == kBJFogOverlay)
        {
            [self displayFogAnimation];
        }
        
        // play one time audio
        if (textPage.oneTimeAudioURL != nil)
        {
            // Play the audio
            flourishTimer = [NSTimer scheduledTimerWithTimeInterval:textPage.oneTimeAudioDelay target:self
                                            selector:@selector(playTextPageAudio) userInfo:nil repeats:NO];
        }
        
        // play multi-page audio if necessary. Otherwise, make sure it is stopped.
        if(textPage.multiPageTimeAudioURL != nil)
        {
            AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
            [appDelegate playMultiPageAudioFromURL:textPage.multiPageTimeAudioURL];
        }
        else
        {
            AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
            [appDelegate fadeMultiPageAudio];
        }


        
    }
    else if (moviePage != nil)
    {
        // There are some pages which will choose to not display a background
        if (moviePage.foregroundPath != nil)
        {
            [self.bookPageView setImage:[UIImage imageWithContentsOfFile:moviePage.foregroundPath]];
        }
        if (moviePage.backgroundPath != nil)
        {
            [self.bookPageBackgroundView setImage:[UIImage imageWithContentsOfFile:moviePage.backgroundPath]];
        }
        if (moviePage.movieURL != nil)
        {
            [self playMainMovie];
        }
        // If we're on a movie page, need to make sure multi page audio is stopped
        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate fadeMultiPageAudio];
    }
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if(textPage != nil)
    {
        if ([textPage displayFlourish]){
            flourishTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self
                                                             selector:@selector(displayFlourish) userInfo:nil repeats:NO];
        }
        else if (textPage.overlay == kBJPixieOverlay)
        {
            flourishTimer = [NSTimer scheduledTimerWithTimeInterval:3 target:self
                                                            selector:@selector(displayPixieAnimation) userInfo:nil repeats:NO];
        }

    }
    
    self.menuView.menuDelegate = self;
}

- (IBAction)openMenu
{
    [self.menuView toggleMenu];
}

- (void)viewDidDisappear:(BOOL)animated {
    [self setMenuView:nil];
    [self setCloudsView:nil];
    [super viewDidAppear:animated];
}

-(IBAction)mapButtonPress
{
    [self stopEverything];
    bjMainMenuOption = NSBJMainMenuMap;
    [self performSegueWithIdentifier: @"GotoMenuSegue" sender: self];
}

-(IBAction)tableOfContentsButtonPress
{
    [self stopEverything];
    bjMainMenuOption = NSBJMainMenuTableOfContents;
    [self performSegueWithIdentifier: @"GotoTOCSegue" sender: self];
}

-(IBAction)titleButtonPress
{
    [self stopEverything];
    [self.chapterDelegate gotoTitlePage];
}

-(IBAction)shareAndSpeculateButtonPress
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.facebook.com/BlackJackAMovingNovel"]];
}

-(IBAction)notesButtonPress
{
    [self stopEverything];
    bjMainMenuOption = NSBJMainMenuNotes;
    [self performSegueWithIdentifier: @"GotoMenuSegue" sender: self];
}

-(IBAction)aboutTheAuthorButtonPress
{
    [self stopEverything];
    bjMainMenuOption = NSBJMainMenuAbout;
    [self performSegueWithIdentifier: @"GotoMenuSegue" sender: self];
}

-(IBAction)dedicationButtonPress
{
    [self stopEverything];
    bjMainMenuOption = NSBJMainMenuDedication;
    [self performSegueWithIdentifier: @"GotoMenuSegue" sender: self];
}

-(IBAction)swagButtonPress
{
    [self stopEverything];
    bjMainMenuOption = NSBJMainMenuSwag;
    [self performSegueWithIdentifier: @"GotoSwagSegue" sender: self];

}

-(IBAction)returnToReadingButtonPress
{
    [self stopEverything];
    [self.chapterDelegate returnToReading];
}

-(void)stopEverything
{
    // stop audio
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate fadeMultiPageAudio];
}


// This will get called too before the view appears
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [self.menuView toggleMenu];
    if ([[segue identifier] isEqualToString:@"GotoMenuSegue"]) {
        
        // Get destination view
        BlackJackViewController *vc = [segue destinationViewController];
        
        // Pass the information to your destination view
        [vc setMenuOption:bjMainMenuOption];
    }
    if ([[segue identifier] isEqualToString:@"GotoPageSegue"]) {
        // Get destination view
        RootViewController *vc = [segue destinationViewController];
        
        // Pass the information to your destination view
        if (bjMainMenuOption == NSBJReturnToReading) {
            [vc setReturnToReading:TRUE];
        }
    }
}

- (void)playMainMovie
{
    if (moviePlayer != nil)
    {
        moviePlayer = nil;
    }
    
    moviePlayer=[[MPMoviePlayerController alloc] initWithContentURL:moviePage.movieURL];
    [moviePlayer.view setFrame:self.view.frame];
    [moviePlayer prepareToPlay];
    [moviePlayer setShouldAutoplay:TRUE];
    [moviePlayer setControlStyle:MPMovieControlStyleNone];
    
    // Set repeat based on setting
    if (moviePage.repeat)
    {
        [moviePlayer setRepeatMode:MPMovieRepeatModeOne];
    }
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(0,0,561,1024)];
    [button addTarget:self action:@selector(openMenu) forControlEvents:UIControlEventTouchUpInside];
    
    [moviePlayer.view addSubview:button];
    [moviePlayer.view addSubview:self.menuView];
    [self.view addSubview:moviePlayer.view];

    
    // Play audio
    player = [[AVAudioPlayer alloc]
              initWithContentsOfURL:moviePage.audioURL
              error:nil];
    [player play];

    // Register to receive a notification when the movie has finished playing.
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(moviePlayBackDidFinish:)
                                                 name:MPMoviePlayerPlaybackDidFinishNotification
                                               object:moviePlayer];
    

}

- (void) moviePlayBackDidFinish : (NSNotification *) notification
{
    int reason = [[[notification userInfo] valueForKey:MPMoviePlayerPlaybackDidFinishReasonUserInfoKey] intValue];
    if (reason == MPMovieFinishReasonPlaybackEnded) {
        [moviePlayer stop];
        [moviePlayer.view removeFromSuperview];
        [[NSNotificationCenter defaultCenter] removeObserver:self
                                                        name:MPMoviePlayerPlaybackDidFinishNotification
                                                      object:moviePlayer];
        
        // If we finished playing the movie and the backgound should fade, fade it now
        if (moviePage.fadeBackground)
        {
            if (isFinalPage)
            {
                alertWorkFlowState = NSBJAlertWorkFlowFinishedChapter;
                [self manageAlertWorkflow];
            }
            // Now perform the animation
		            [UIView animateWithDuration:5
                                  delay:0
                                options: UIViewAnimationOptionCurveEaseOut
                             animations:^{
                                 self.bookPageView.alpha = 0;
                             }
                             completion:^(BOOL finished){
                             }];
            
        }
        if (moviePage.autoPageTurn)
        {
            [self.chapterDelegate gotoNextPage];
        }
    }
}

-(void)manageAlertWorkflow
{
    CGRect frame = CGRectMake(0, 0, 768, 1024);
    alertView = [[BlackJackAlertView alloc] initWithFrame:frame];
    [alertView setBackgroundColor:[UIColor clearColor]];
    alertView.delegate = self;

    if (alertWorkFlowState == NSBJAlertWorkFlowFinishedChapter)
    {
        [alertView setSelectedAlertOption:NSBJBuyChapter2];
        alertWorkFlowState = NSBJAlertWorkFlowDisplayedKeepReading;
    }
    else if (alertWorkFlowState == NSBJAlertWorkFlowDisplayedKeepReading)
    {
        if (alertButtonPress == NSBJAlertButtonPressOK)
        {
            [alertView setSelectedAlertOption:NSBJBuyAllChapters];
            alertWorkFlowState = NSBJAlertWorkFlowDisplayedLimitedOffer;
        }
        else
        {
            [alertView setSelectedAlertOption:NSBJBuySwag];
            alertWorkFlowState = NSBJAlertWorkFlowDisplayedSwag;
        }
    }
    else if (alertWorkFlowState == NSBJAlertWorkFlowDisplayedLimitedOffer)
    {
        if (alertButtonPress == NSBJAlertButtonPressOK)
        {
            // Eventually will link to the buy page
        }
        else
        {
            [alertView setSelectedAlertOption:NSBJBuyOneGetOne];
            alertWorkFlowState = NSBJAlertWorkFlowDisplayedBOGO;
        }
    }
    else if (alertWorkFlowState == NSBJAlertWorkFlowDisplayedBOGO)
    {
        if (alertButtonPress == NSBJAlertButtonPressOK)
        {
            // Eventually will link to the buy page
        }
        else
        {
            [alertView setSelectedAlertOption:NSBJBuySwag];
            alertWorkFlowState = NSBJAlertWorkFlowDisplayedSwag;
        }
    }

    [self.view addSubview:alertView];
}

-(IBAction)okButtonPress
{
    [alertView removeFromSuperview];
    alertButtonPress = NSBJAlertButtonPressOK;
    [self manageAlertWorkflow];
}

-(IBAction)cancelButtonPress
{
    [alertView removeFromSuperview];
    alertButtonPress = NSBJAlertButtonPressCancel;
    [self manageAlertWorkflow];
}

-(void)playTextPageAudio
{
    // Play audio
    player = [[AVAudioPlayer alloc]
              initWithContentsOfURL:textPage.oneTimeAudioURL
              error:nil];
    [player play];    
}
            
-(void)displayFlourish
{
    // Build an array of images based on the image sequence name
    NSMutableArray *flourishImages =[[NSMutableArray alloc] initWithCapacity:10];
    BOOL continueLoop = TRUE;
    int arraySize=-1;
    for (int i=0;continueLoop;i++) {
        NSString *flourishImage = [NSString stringWithFormat:@"%@%04d", textPage.flourishName, i];
        UIImage *image = [UIImage imageNamed:flourishImage];
        if (image != nil)
        {
            [flourishImages addObject:image];
            arraySize = arraySize+1;
        }
        else
        {
            continueLoop=FALSE;
        }
    }
    
    // position and size the animated image on the page
    UIImage *finalImage = [flourishImages objectAtIndex:arraySize];
    
    CGRect newFrame = CGRectMake(textPage.flourishXAxis, textPage.flourishYAxis, finalImage.size.width, finalImage.size.height);
    self.flourishView.frame = newFrame;
    
    self.flourishView.animationImages = flourishImages;
    self.flourishView.animationDuration = arraySize/24; // the image sequence should have been rendered at 24 FPS
    self.flourishView.animationRepeatCount = 1; // 0 = loops forever
    self.flourishView.image = [flourishImages objectAtIndex:arraySize];
    [self.flourishView startAnimating];
    [flourishTimer invalidate];
}

-(void)displayPixieAnimation
{
    // First, randomly select a pixie image sequence -- get a number between 1 and 6
    int sequenceNum = arc4random_uniform(5)+1;
    
    // Build an array of images based on the image sequence name
    NSMutableArray *flourishImages =[[NSMutableArray alloc] initWithCapacity:10];
    BOOL continueLoop = TRUE;
    int arraySize=-1;
    for (int i=29;continueLoop;i++) {
        NSString *flourishImage = [NSString stringWithFormat:@"CH03_UglyPixie%d_%05d", sequenceNum, i];
        UIImage *image = [UIImage imageNamed:flourishImage];
        if (image != nil)
        {
            [flourishImages addObject:image];
            arraySize = arraySize+1;
        }
        else
        {
            continueLoop=FALSE;
        }
    }
    UIImage *finalImage = [flourishImages objectAtIndex:arraySize];
    
    int maxXCoordinate = 400;
    int xCoordiante = arc4random_uniform(maxXCoordinate)-100;
    
    // Generate random y coordiante between 0 and 1024 minus the image height
    int maxYCoordinate = 1024-finalImage.size.height;
    int yCoordiante = arc4random_uniform(maxYCoordinate);
    
    CGRect newFrame = CGRectMake(xCoordiante, yCoordiante, finalImage.size.width, finalImage.size.height);
    self.flourishView.frame = newFrame;
    
    self.flourishView.animationImages = flourishImages;
    self.flourishView.animationDuration = arraySize/12; // the image sequence should have been rendered at 24 FPS
    self.flourishView.animationRepeatCount = 1; // 0 = loops forever
    self.flourishView.image = [flourishImages objectAtIndex:arraySize];
    [self.flourishView startAnimating];
    [flourishTimer invalidate];
    
    // Set up the timer. Should kick off between 12 and 20 seconds later
    int nextInterval = arc4random_uniform(8)+12;
    flourishTimer = [NSTimer scheduledTimerWithTimeInterval:nextInterval target:self
                                                    selector:@selector(displayPixieAnimation) userInfo:nil repeats:NO];

}

-(void)displayCloudAnimation
{
    // Build an array of images based on the image sequence name
    NSMutableArray *flourishImages =[[NSMutableArray alloc] initWithCapacity:10];
    BOOL continueLoop = TRUE;
    int arraySize=-1 ;
    for (int i=0;continueLoop;i++) {
        NSString *flourishImage = [NSString stringWithFormat:@"6FPS_LR_%05d", i];
        UIImage *image = [UIImage imageNamed:flourishImage];
        if (image != nil)
        {
            [flourishImages addObject:image];
            arraySize = arraySize+1;
        }
        else
        {
            continueLoop=FALSE;
        }
    }
    
    self.cloudsView.animationImages = flourishImages;
    self.cloudsView.animationDuration = arraySize/6; // the image sequence should have been rendered at 6 FPS because 24fps is hyperactive
    self.cloudsView.animationRepeatCount = 0; // 0 = loops forever
//    self.cloudsView.image = [flourishImages objectAtIndex:arraySize];
    [self.cloudsView startAnimating];
}

-(void)displaySnowAnimation
{
    // Build an array of images based on the image sequence name
    NSMutableArray *flourishImages =[[NSMutableArray alloc] initWithCapacity:10];
    BOOL continueLoop = TRUE;
    int arraySize=-1 ;
    for (int i=0;continueLoop;i++) {
        NSString *flourishImage = [NSString stringWithFormat:@"CH16_FallingSnow_V3_HalfRes_%04d", i];
        UIImage *image = [UIImage imageNamed:flourishImage];
        if (image != nil)
        {
            [flourishImages addObject:image];
            arraySize = arraySize+1;
        }
        else
        {
            continueLoop=FALSE;
        }
    }
    NSLog(@"%d, %lu", arraySize, flourishImages.count);
    self.cloudsView.animationImages = flourishImages;
    self.cloudsView.animationDuration = arraySize/12; // the image sequence should have been rendered at 6 FPS because 24fps is hyperactive
    self.cloudsView.animationRepeatCount = 0; // 0 = loops forever
    self.cloudsView.image = [flourishImages objectAtIndex:arraySize];
    [self.cloudsView startAnimating];
}

-(void)displayEmberAnimation
{
    // Build an array of images based on the image sequence name
    NSMutableArray *flourishImages =[[NSMutableArray alloc] initWithCapacity:10];
    BOOL continueLoop = TRUE;
    int arraySize=-1 ;
    for (int i=0;continueLoop;i++) {
        NSString *flourishImage = [NSString stringWithFormat:@"Embers_FullRes_%05d", i];
        UIImage *image = [UIImage imageNamed:flourishImage];
        if (image != nil)
        {
            [flourishImages addObject:image];
            arraySize = arraySize+1;
        }
        else
        {
            continueLoop=FALSE;
        }
    }
    NSLog(@"%d, %lu", arraySize, flourishImages.count);
    self.cloudsView.animationImages = flourishImages;
    self.cloudsView.animationDuration = arraySize/24;
    self.cloudsView.animationRepeatCount = 0; // 0 = loops forever
    self.cloudsView.image = [flourishImages objectAtIndex:arraySize];
    [self.cloudsView startAnimating];
}

-(void)displayFogAnimation
{
    // Build an array of images based on the image sequence name
    NSMutableArray *flourishImages =[[NSMutableArray alloc] initWithCapacity:10];
    BOOL continueLoop = TRUE;
    int arraySize=-1;
    for (int i=0;continueLoop;i++) {
        NSString *flourishImage = [NSString stringWithFormat:@"Pre-comp 2_%05d",i];
        UIImage *image = [UIImage imageNamed:flourishImage];
        if (image != nil)
        {
            [flourishImages addObject:image];
            arraySize = arraySize+1;
        }
        else
        {
            continueLoop=FALSE;
        }
    }
    
    CGRect newFrame = CGRectMake(0, 0, 768, 1024);
    self.flourishView.frame = newFrame;

    self.flourishView.animationImages = flourishImages;
    self.flourishView.animationDuration = arraySize/24; // the image sequence should have been rendered at 24 FPS
    self.flourishView.animationRepeatCount = 0; // 0 = loops forever
    self.flourishView.image = [flourishImages objectAtIndex:arraySize];
    [self.flourishView startAnimating];
    [flourishTimer invalidate];
}

-(void)displayMotesAnimation
{
    // Build an array of images based on the image sequence name
    NSMutableArray *flourishImages =[[NSMutableArray alloc] initWithCapacity:10];
    BOOL continueLoop = TRUE;
    int arraySize=-1 ;
    for (int i=0;continueLoop;i++) {
        NSString *flourishImage = [NSString stringWithFormat:@"DriftingMotes_%05d", i];
        UIImage *image = [UIImage imageNamed:flourishImage];
        if (image != nil)
        {
            [flourishImages addObject:image];
            arraySize = arraySize+1;
        }
        else
        {
            continueLoop=FALSE;
        }
    }
    NSLog(@"%d, %lu", arraySize, flourishImages.count);
    self.cloudsView.animationImages = flourishImages;
    self.cloudsView.animationDuration = arraySize/24; // the image sequence should have been rendered at 6 FPS because 24fps is hyperactive
    self.cloudsView.animationRepeatCount = 0; // 0 = loops forever
    self.cloudsView.image = [flourishImages objectAtIndex:arraySize];
    [self.cloudsView startAnimating];
}

-(void)displayIrrationalHypothermiaAnimation
{
    // Build an array of images based on the image sequence name
    NSMutableArray *flourishImages =[[NSMutableArray alloc] initWithCapacity:10];
    BOOL continueLoop = TRUE;
    int arraySize=-1 ;
    for (int i=0;continueLoop;i++) {
        NSString *flourishImage = [NSString stringWithFormat:@"IrrationalHypo_%05d", i];
        UIImage *image = [UIImage imageNamed:flourishImage];
        if (image != nil)
        {
            [flourishImages addObject:image];
            arraySize = arraySize+1;
        }
        else
        {
            continueLoop=FALSE;
        }
    }
    NSLog(@"%d, %lu", arraySize, flourishImages.count);
    self.cloudsView.animationImages = flourishImages;
    self.cloudsView.animationDuration = arraySize/24; // the image sequence should have been rendered at 6 FPS because 24fps is hyperactive
    self.cloudsView.animationRepeatCount = 1; // 0 = loops forever
    self.cloudsView.image = [flourishImages objectAtIndex:arraySize];
    [self.cloudsView startAnimating];
}

-(void)displayCopLightAnimation
{
    // Build an array of images based on the image sequence name
    NSMutableArray *flourishImages =[[NSMutableArray alloc] initWithCapacity:10];
    BOOL continueLoop = TRUE;
    int arraySize=-1 ;
    for (int i=0;continueLoop;i++) {
        NSString *flourishImage = [NSString stringWithFormat:@"CH02_PoliceLightsLoop_%05d", i];
        UIImage *image = [UIImage imageNamed:flourishImage];
        if (image != nil)
        {
            [flourishImages addObject:image];
            arraySize = arraySize+1;
        }
        else
        {
            continueLoop=FALSE;
        }
    }
    NSLog(@"%d, %lu", arraySize, flourishImages.count);
    self.cloudsView.animationImages = flourishImages;
    self.cloudsView.animationDuration = arraySize/24;
    self.cloudsView.animationRepeatCount = 0; // 0 = loops forever
    self.cloudsView.image = [flourishImages objectAtIndex:arraySize];
    [self.cloudsView startAnimating];
}

-(void)displayPageFadeIn
{
    self.bookPageView.alpha = 0;
    
    // Now perform the animation
    [UIView animateWithDuration: 5
                          delay: 0
                        options: UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         self.bookPageView.alpha = 1;
                     }
                     completion:^(BOOL finished){
                     }];
}


/* No longer needed, but kiiling around just in case.
 -(void)setupCloudRollover
 {
 UIImage *cloudOverlayImage = [UIImage imageNamed:@"Clouds_Overlay_4176.png"];
 cloudOverlayImageView1 = [[UIImageView alloc] initWithImage: cloudOverlayImage];
 cloudOverlayImageView2 = [[UIImageView alloc] initWithImage: cloudOverlayImage];
 cloudOverlayImageView1.alpha = .085;
 cloudOverlayImageView2.alpha = .085;
 
 // Add the cloud image and set coordinates appropriately
 [self.view addSubview:cloudOverlayImageView1];
 [self.view addSubview:cloudOverlayImageView2];
 
 cloudOverlayImageView1.frame = currentCloudView1Rect;
 cloudOverlayImageView2.frame = currentCloudView2Rect;
 }
 
 
 -(void)animateCloudRollover
 {
 currentCloudView1Rect.origin.x = currentCloudView1Rect.origin.x+48;
 currentCloudView2Rect.origin.x = currentCloudView2Rect.origin.x+48;
 cloudOverlayImageView1.hidden = FALSE;
 cloudOverlayImageView2.hidden = FALSE;
 
 // If the last animation moved one of the image views off screen right, reposition to the
 // far left so it can start its animation life over
 if (currentCloudView1Rect.origin.x >= 768)
 {
 currentCloudView1Rect.origin.x = -7584;
 cloudOverlayImageView1.hidden = TRUE;
 }
 if (currentCloudView2Rect.origin.x >= 768)
 {
 currentCloudView2Rect.origin.x = -7584;
 cloudOverlayImageView2.hidden = TRUE;
 }
 
 // Now perform the animation
 [UIView animateWithDuration:2.0
 delay:0
 options: UIViewAnimationOptionCurveLinear
 animations:^{
 cloudOverlayImageView1.frame = currentCloudView1Rect;
 cloudOverlayImageView2.frame = currentCloudView2Rect;
 }
 completion:^(BOOL finished){
 // Finish animating the cloud off the screen
 if (!stopCloudRollover)
 {
 [self animateCloudRollover];
 }
 }];
 }
 */


@end

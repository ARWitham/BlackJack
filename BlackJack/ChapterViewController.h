//
//  ChapterViewController.h
//  BlackJack
//
//  Created by eric white on 10/10/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"
#import "MenuBarView.h"
#import "BlackJackViewController.h"
#import "BlackJackAlertView.h"
#import <MediaPlayer/MediaPlayer.h>
@import AVFoundation;

@protocol ChapterViewDelegate;

enum {
    NSBJAlertWorkFlowFinishedChapter = 1,
    NSBJAlertWorkFlowDisplayedKeepReading = 2,
    NSBJAlertWorkFlowDisplayedLimitedOffer = 3,
    NSBJAlertWorkFlowDisplayedBOGO = 4,
    NSBJAlertWorkFlowDisplayedSwag = 5
};
typedef NSUInteger NSBJEndOfChapterState;

enum {
    NSBJAlertButtonPressOK = 1,
    NSBJAlertButtonPressCancel = 2
};
typedef NSUInteger NSBJAlertViewButtonPressType;

@interface ChapterViewController : UIViewController <MainMenuDelegate, BlackJackAlertViewDelegate>
{
//    MPMoviePlayerController *moviePlayer;
    BOOL isMenuDisplayed;
    NSTimer *flourishTimer;
    NSBJMenuOption bjMainMenuOption;
    BOOL isPlayingIntroVideo;
    BOOL stopCloudRollover;
    NSBJEndOfChapterState alertWorkFlowState;
    NSBJAlertViewButtonPressType alertButtonPress;
    BlackJackAlertView *alertView;
    BOOL startedCustomAudio;
    AVAudioPlayer *player;
}

@property (retain, nonatomic) IBOutlet MenuBarView *menuView;
@property (strong, nonatomic) IBOutlet UIImageView *bookPageView;
@property (retain, nonatomic) IBOutlet UIImageView *bookPageBackgroundView;
@property (retain, nonatomic) IBOutlet UIImageView *cloudsView;
@property (strong, nonatomic) MoviePageOfBook *moviePage;
@property (strong, nonatomic) TextPageOfBook *textPage;
@property (retain, nonatomic) IBOutlet UIView *myView;
@property (retain, nonatomic) IBOutlet UIImageView *flourishView;
@property (nonatomic, assign) id<ChapterViewDelegate> chapterDelegate;
@property (nonatomic) BOOL isFinalPage;
- (IBAction)openMenu;

@end


@protocol ChapterViewDelegate <NSObject>
-(void)gotoTitlePage;
-(void)returnToReading;
-(void)gotoNextPage;
@end

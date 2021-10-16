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

typedef NS_ENUM(NSUInteger, NSBJEndOfChapterState) {
    NSBJAlertWorkFlowFinishedChapter = 1,
    NSBJAlertWorkFlowDisplayedKeepReading = 2,
    NSBJAlertWorkFlowDisplayedLimitedOffer = 3,
    NSBJAlertWorkFlowDisplayedBOGO = 4,
    NSBJAlertWorkFlowDisplayedSwag = 5
};

typedef NS_ENUM(NSUInteger, NSBJAlertViewButtonPressType) {
    NSBJAlertButtonPressOK = 1,
    NSBJAlertButtonPressCancel = 2
};

@interface ChapterViewController : UIViewController <MainMenuDelegate, BlackJackAlertViewDelegate>

@property (strong, nonatomic) IBOutlet MenuBarView *menuView;
@property (strong, nonatomic) IBOutlet UIImageView *bookPageView;
@property (strong, nonatomic) IBOutlet UIImageView *bookPageBackgroundView;
@property (strong, nonatomic) IBOutlet UIImageView *cloudsView;
@property (strong, nonatomic) MoviePageOfBook *moviePage;
@property (strong, nonatomic) TextPageOfBook *textPage;
@property (strong, nonatomic) IBOutlet UIView *myView;
@property (strong, nonatomic) IBOutlet UIImageView *flourishView;
@property (nonatomic, assign) id<ChapterViewDelegate> chapterDelegate;
@property (nonatomic) BOOL isFinalPage;
- (IBAction)openMenu;

@end


@protocol ChapterViewDelegate <NSObject>
-(void)gotoTitlePage;
-(void)returnToReading;
-(void)gotoNextPage;
@end

//
//  BookCoverViewController.h
//  BlackJack
//
//  Created by eric white on 12/29/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuBarView.h"
#import "BlackJackAlertView.h"
#import <MediaPlayer/MediaPlayer.h>
@import AVFoundation;

@interface BookCoverViewController : UIViewController <BlackJackAlertViewDelegate>
{
    AVAudioPlayer *audioPlayer;
    MPMoviePlayerController *moviePlayer;
    NSTimer *slowIntroTimer;
    BlackJackAlertView *alertView;
    BOOL displayedFirstTime;
    BOOL displayedAudioWarning;
}
NS_ASSUME_NONNULL_BEGIN
@property (strong, nonatomic, nullable) IBOutlet UIImageView *relaxImageView;
@property (strong, nonatomic, nullable) IBOutlet UIImageView *bookCoverImage;
@property (strong, nonatomic) MenuBarView *menuView;
//@property (retain, nonatomic) IBOutlet BlackJackAlertView *alertView;
-(IBAction)openBook;
-(IBAction)okButtonPress;
NS_ASSUME_NONNULL_END
@end

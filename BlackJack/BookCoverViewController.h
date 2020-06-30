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
#import <AVFoundation/AVAudioPlayer.h>
#import <MediaPlayer/MediaPlayer.h>

@interface BookCoverViewController : UIViewController <BlackJackAlertViewDelegate>
{
    AVAudioPlayer *audioPlayer;
    MPMoviePlayerController *moviePlayer;
    NSTimer *slowIntroTimer;
    BlackJackAlertView *alertView;
    BOOL displayedFirstTime;
    BOOL displayedAudioWarning;
}
@property (retain, nonatomic) IBOutlet UIImageView *relaxImageView;
@property (retain, nonatomic) IBOutlet UIImageView *bookCoverImage;
@property (retain, nonatomic) MenuBarView *menuView;
//@property (retain, nonatomic) IBOutlet BlackJackAlertView *alertView;
-(IBAction)openBook;
-(IBAction)okButtonPress;

@end

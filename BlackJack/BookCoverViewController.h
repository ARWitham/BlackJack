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
@import AVKit;

@interface BookCoverViewController : UIViewController <BlackJackAlertViewDelegate>
{
    AVAudioPlayer *audioPlayer;
    NSTimer *slowIntroTimer;
    BOOL displayedFirstTime;
    BOOL displayedAudioWarning;
}
NS_ASSUME_NONNULL_BEGIN
@property (strong, nonatomic, nullable) IBOutlet UIImageView *relaxImageView;
@property (strong, nonatomic, nullable) IBOutlet UIImageView *bookCoverImage;
@property (strong, nonatomic) MenuBarView *menuView;
@property (strong, nonatomic) IBOutlet BlackJackAlertView *alertView;
-(IBAction)openBook;
-(IBAction)okButtonPress;
NS_ASSUME_NONNULL_END
@end

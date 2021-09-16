//
//  BlackJackAlertView.h
//  BlackJack
//
//  Created by eric white on 1/17/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BlackJackAlertViewDelegate;

enum {
    NSBJFirstLaunch = 1,
    NSBJAudioAnnouncement = 2,
    NSBJReadChapterOne = 3,
    NSBJBuyChapter2 = 4,
    NSBJBuyAllChapters = 5,
    NSBJBuyOneGetOne = 6,
    NSBJBuySwag = 7
};
typedef NSUInteger NSBJAlertType;

@interface BlackJackAlertView : UIView
{
    UIButton *okButton;
    UIButton *cancelButton;
}
@property NSBJAlertType selectedAlertOption;
@property(nonatomic, weak, nullable) id<BlackJackAlertViewDelegate> delegate;
@property(nonatomic, strong, nullable) UIImage *backgroundImage;

@end


@protocol BlackJackAlertViewDelegate <NSObject>

-(IBAction)okButtonPress;
-(IBAction)cancelButtonPress;

@end

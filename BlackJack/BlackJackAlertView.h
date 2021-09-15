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
//    id<BlackJackAlertViewDelegate> _delegate;
    UIButton *okButton;
    UIButton *cancelButton;
}
@property NSBJAlertType selectedAlertOption;
@property(nonatomic, assign) id<BlackJackAlertViewDelegate> delegate;
@property(nonatomic, assign) UIImage *backgroundImage;
-(id)initWithOption:(NSBJAlertType)alertOption;

@end


@protocol BlackJackAlertViewDelegate <NSObject>

-(IBAction)okButtonPress;
-(IBAction)cancelButtonPress;

@end

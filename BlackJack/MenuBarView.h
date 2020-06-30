//
//  MenuBarView.h
//  BlackJack
//
//  Created by eric white on 12/28/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MainMenuDelegate;

@interface MenuBarView : UIView
{
//    id<MainMenuDelegate> _menuDelegate;
    BOOL isMenuDisplayed;
}
@property(nonatomic, assign) id<MainMenuDelegate> menuDelegate;
@property(nonatomic) BOOL hideReturnToReading;

-(void) toggleMenu;

@end


@protocol MainMenuDelegate <NSObject>

-(IBAction)mapButtonPress;
-(IBAction)tableOfContentsButtonPress;
-(IBAction)titleButtonPress;
-(IBAction)shareAndSpeculateButtonPress;
-(IBAction)notesButtonPress;
-(IBAction)aboutTheAuthorButtonPress;
-(IBAction)dedicationButtonPress;
-(IBAction)swagButtonPress;
-(IBAction)returnToReadingButtonPress;

@end

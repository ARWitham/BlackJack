//
//  BlackJackViewController.h
//  BlackJack
//
//  Created by eric white on 12/28/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MenuBarView.h"

typedef NS_ENUM(NSUInteger, NSBJMenuOption) {
    NSBJMainMenuMap = 1,
    NSBJMainMenuTitle = 2,
    NSBJMainMenuNotes = 3,
    NSBJMainMenuAbout = 4,
    NSBJMainMenuDedication = 5,
    NSBJReturnToReading =6,
    NSBJMainMenuTableOfContents=7,
    NSBJMainMenuSwag=8
};


@interface BlackJackViewController : UIViewController <MainMenuDelegate>
{
    BOOL isMenuDisplayed;
}
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (strong, nonatomic) IBOutlet UIImageView *notesImage;
@property (strong, nonatomic) IBOutlet UITextView *notesText;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@property (strong, nonatomic) IBOutlet MenuBarView *menuView;
@property (nonatomic) NSBJMenuOption menuOption;

-(IBAction)toggleMenu;

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

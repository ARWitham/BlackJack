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

enum {
    NSBJMainMenuMap = 1,
    NSBJMainMenuTitle = 2,
    NSBJMainMenuNotes = 3,
    NSBJMainMenuAbout = 4,
    NSBJMainMenuDedication = 5,
    NSBJReturnToReading =6,
    NSBJMainMenuTableOfContents=7,
    NSBJMainMenuSwag=8
};
typedef NSUInteger NSBJMenuOption;


@interface BlackJackViewController : UIViewController <MainMenuDelegate>
{
    BOOL isMenuDisplayed;
}
@property (retain, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (retain, nonatomic) IBOutlet UIImageView *notesImage;
@property (retain, nonatomic) IBOutlet UITextView *notesText;
@property (retain, nonatomic) IBOutlet MKMapView *mapView;

@property (retain, nonatomic) IBOutlet MenuBarView *menuView;
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

//
//  BlackJackViewController.m
//  BlackJack
//
//  Created by eric white on 12/28/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import "AppDelegate.h"
#import "BlackJackViewController.h"
#import "RootViewController.h"

@interface BlackJackViewController ()

@end

@implementation BlackJackViewController
@synthesize menuView;
@synthesize menuOption;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    menuView.menuDelegate = self;
    if (menuOption == NSBJMainMenuAbout)
    {
        [self.backgroundImage setImage:[UIImage imageNamed:@"About.jpg"]];
    }
    if (menuOption == NSBJMainMenuDedication)
    {
        [self.backgroundImage setImage:[UIImage imageNamed:@"Dedication.jpg"]];
    }
    if (menuOption == NSBJMainMenuNotes)
    {
        [self.backgroundImage setImage:[UIImage imageNamed:@"TOC_Bkgd.jpg"]];
        self.notesImage.hidden = false;
        self.notesText.hidden = false;
        
        //Get info for notes
        NSString *blackJackNotes = [[NSString alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://guilfordgroup.com/blackjack/black_jack_notes.txt"] encoding:NSUTF8StringEncoding error:nil];
        if (blackJackNotes == nil)
        {
            blackJackNotes = @"Thank you for reading BlackJack!";
        }
        self.notesText.text = blackJackNotes;
        [blackJackNotes release];

    }
    if (menuOption == NSBJMainMenuMap)
    {
        self.mapView.hidden = false;
        CLLocationCoordinate2D coord = {.latitude =  43.7385, .longitude= -101.9376};
        MKCoordinateSpan span = {.latitudeDelta= 0.2, .longitudeDelta =  0.2};
        MKCoordinateRegion region = {coord, span};
        
        [self.mapView setRegion:region];
    }
}

- (void)dealloc {
    [menuView release];
    [_backgroundImage release];
    [_notesImage release];
    [_notesText release];
    [_mapView release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setMenuView:nil];
    [self setBackgroundImage:nil];
    [self setNotesImage:nil];
    [self setNotesText:nil];
    [self setMapView:nil];
    [super viewDidUnload];
}

- (IBAction)toggleMenu
{
    [menuView toggleMenu];
}

-(IBAction)mapButtonPress
{
    NSLog(@"Map Button Press");
    
}
-(IBAction)tableOfContentsButtonPress
{
    [self toggleMenu];
    [self performSegueWithIdentifier: @"GotoChapterSegue" sender: self];
}
-(IBAction)titleButtonPress
{
    
}
-(IBAction)shareAndSpeculateButtonPress
{
    
}
-(IBAction)notesButtonPress
{
    
}
-(IBAction)aboutTheAuthorButtonPress
{
    
}
-(IBAction)dedicationButtonPress
{
    
}
-(IBAction)swagButtonPress
{
    
}
-(IBAction)returnToReadingButtonPress
{
    [self toggleMenu];
    [self performSegueWithIdentifier: @"GotoChapterSegue" sender: self];
}

// This will get called too before the view appears
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [self.menuView toggleMenu];
    if ([[segue identifier] isEqualToString:@"GotoChapterSegue"]) {
        
        // Get destination view
        RootViewController *vc = [segue destinationViewController];
        
        // Pass the information to your destination view
        [vc setReturnToReading:TRUE];
    }
}


@end

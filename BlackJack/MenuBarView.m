//
//  MenuBarView.m
//  BlackJack
//
//  Created by eric white on 12/28/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import "MenuBarView.h"

static UIImage *backgroundImage = nil;

static UIButton *mapButton = nil;
static UIButton *tableOfContentsButton = nil;
static UIButton *titleButton = nil;
static UIButton *shareAndSpeculateButton = nil;
static UIButton *notesButton = nil;
static UIButton *aboutTheAuthorButton = nil;
static UIButton *dedicationButton = nil;
static UIButton *swagButton = nil;
static UIButton *returnToReadingButton = nil;
static id<MainMenuDelegate> _menuDelegate;

static BOOL isInitialized = FALSE;

@implementation MenuBarView

@synthesize menuDelegate = _menuDelegate;
@synthesize hideReturnToReading;

+(void) initialize
{
    if (!isInitialized)
    {
        //initialize background image
        backgroundImage = [[UIImage imageNamed:@"Menu-Background.jpg"] retain];

        // Initialize buttons
        mapButton                 = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
        tableOfContentsButton     = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
        titleButton               = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
        shareAndSpeculateButton   = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
        notesButton               = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
        aboutTheAuthorButton      = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
        dedicationButton          = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
        swagButton                = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
        returnToReadingButton     = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
    
        // Set the frame for each button
        [mapButton                          setFrame:CGRectMake(0,160,312, 63)];
        [tableOfContentsButton              setFrame:CGRectMake(0,244,312,109)];
        [titleButton                        setFrame:CGRectMake(0,330,312, 76)];
        [shareAndSpeculateButton            setFrame:CGRectMake(0,414,312, 95)];
        [notesButton                        setFrame:CGRectMake(0,517,312,105)];
        [aboutTheAuthorButton               setFrame:CGRectMake(0,623,312,107)];
        [dedicationButton                   setFrame:CGRectMake(0,729,312, 84)];
        [swagButton                         setFrame:CGRectMake(0,803,312, 81)];
        [returnToReadingButton              setFrame:CGRectMake(0,945,312, 85)];

        // Set background image for each button
        [mapButton                          setBackgroundImage:[UIImage imageNamed:@"Menu-Map.png"] forState:UIControlStateNormal];
        [tableOfContentsButton              setBackgroundImage:[UIImage imageNamed:@"Menu-TOC.png"] forState:UIControlStateNormal];
        [titleButton                        setBackgroundImage:[UIImage imageNamed:@"Menu-TitlePage.png"] forState:UIControlStateNormal];
        [shareAndSpeculateButton            setBackgroundImage:[UIImage imageNamed:@"Menu-ShareAndSpeculate.png"] forState:UIControlStateNormal];
        [notesButton                        setBackgroundImage:[UIImage imageNamed:@"Menu-Notes.png"] forState:UIControlStateNormal];
        [aboutTheAuthorButton               setBackgroundImage:[UIImage imageNamed:@"Menu-AboutTheAuthor.png"] forState:UIControlStateNormal];
        [dedicationButton                   setBackgroundImage:[UIImage imageNamed:@"Menu-Dedication.png"] forState:UIControlStateNormal];
        [swagButton                         setBackgroundImage:[UIImage imageNamed:@"Menu-Swag.png"] forState:UIControlStateNormal];
        [returnToReadingButton              setBackgroundImage:[UIImage imageNamed:@"Menu-ReturnToReading.png"] forState:UIControlStateNormal];
    
        // Add targets for button press actions
        [mapButton                          addTarget:_menuDelegate action:@selector(mapButtonPress) forControlEvents:UIControlEventTouchUpInside];
        [tableOfContentsButton              addTarget:_menuDelegate action:@selector(tableOfContentsButtonPress) forControlEvents:UIControlEventTouchUpInside];
        [titleButton                        addTarget:_menuDelegate action:@selector(titleButtonPress) forControlEvents:UIControlEventTouchUpInside];
        [shareAndSpeculateButton            addTarget:_menuDelegate action:@selector(shareAndSpeculateButtonPress) forControlEvents:UIControlEventTouchUpInside];
        [notesButton                        addTarget:_menuDelegate action:@selector(notesButtonPress) forControlEvents:UIControlEventTouchUpInside];
        [aboutTheAuthorButton               addTarget:_menuDelegate action:@selector(aboutTheAuthorButtonPress) forControlEvents:UIControlEventTouchUpInside];
        [dedicationButton                   addTarget:_menuDelegate action:@selector(dedicationButtonPress) forControlEvents:UIControlEventTouchUpInside];
        [swagButton                         addTarget:_menuDelegate action:@selector(swagButtonPress) forControlEvents:UIControlEventTouchUpInside];
        [returnToReadingButton              addTarget:_menuDelegate action:@selector(returnToReadingButtonPress) forControlEvents:UIControlEventTouchUpInside];
        
        isInitialized = TRUE;
    }
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Draw the background image
	CGRect imageRect = CGRectZero;
	imageRect.size = [backgroundImage size];
	[backgroundImage drawInRect:imageRect];
    
    // Add each button to the view
    [self addSubview:mapButton];
    [self addSubview:tableOfContentsButton];
    [self addSubview:titleButton];
    [self addSubview:shareAndSpeculateButton];
    [self addSubview:notesButton];
    [self addSubview:aboutTheAuthorButton];
    [self addSubview:dedicationButton];
    [self addSubview:swagButton];
    
    if(!hideReturnToReading)
    {
        [self addSubview:returnToReadingButton];
    }
    
}

- (void)toggleMenu
{
    // If the menu was hidden, unhide it before animating
    if (!isMenuDisplayed)
    {
        self.hidden = FALSE;
    }
    
    CGRect menuFrame = self.frame;
    
    // If the menu is curently displayed, we will hide it by moving the origin of the frame off view.
    if (isMenuDisplayed)
    {
        menuFrame.origin.x = 768;
    }
    
    // If the menu is curently hidden, we will display it by moving the origin of the frame on to the view.
    else
    {
        menuFrame.origin.x = 456;
    }
    
    // toggle the isMenuDisplayed setting
    isMenuDisplayed = !isMenuDisplayed;
    
    // Now perform the animation
    [UIView animateWithDuration:0.5
                          delay:0
                        options: UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         self.frame = menuFrame;
                     }
                     completion:^(BOOL finished){
                         
                         // If the menu was just moved off screen, hide it now so it doesn't show on the back side
                         // of the page on a pagecurl
                         if (!isMenuDisplayed)
                         {
                             self.hidden = TRUE;
                         }
                     }];
}


@end

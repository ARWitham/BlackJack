//
//  BlackJackAlertView.m
//  BlackJack
//
//  Created by eric white on 1/17/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "BlackJackAlertView.h"

@implementation BlackJackAlertView
@synthesize selectedAlertOption;
@synthesize delegate = _delegate;
@synthesize backgroundImage;
-(id)initWithOption:(NSBJAlertType)alertOption
{
    self = [super init];
    if (self)
    {
        selectedAlertOption = alertOption;
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    if (selectedAlertOption == NSBJFirstLaunch)
    {
        [self drawFirstLaunch:rect];
    }
    else if (selectedAlertOption == NSBJAudioAnnouncement)
    {
        [self drawAudioAnnouncement:rect];
    }
    else if (selectedAlertOption == NSBJBuyChapter2)
    {
        [self drawBuyChapter2:rect];
    }
    else if (selectedAlertOption == NSBJBuyAllChapters)
    {
        [self drawBuyAllChapters:rect];
    }
    else if (selectedAlertOption == NSBJBuyOneGetOne)
    {
        [self drawBuyOneGetOne:rect];
    }
    else if (selectedAlertOption == NSBJBuySwag)
    {
        [self drawBuySwag:rect];
    }

}
-(void)drawFirstLaunch:(CGRect)rect
{
    // set the background image
    backgroundImage = [[UIImage imageNamed:@"CenterTapAnnouncement.jpg"] retain];
    UIImageView* backgroundView = [[UIImageView alloc] initWithImage:backgroundImage];
    backgroundView.frame =  CGRectMake(CGRectGetMidX(self.bounds) - CGRectGetMidX(backgroundView.bounds),
                                       CGRectGetMidY(self.bounds) - CGRectGetMidY(backgroundView.bounds),
                                       backgroundImage.size.width,
                                       backgroundImage.size.height);
    [self addSubview:backgroundView];
    
    // Setup the button
    okButton = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
    [okButton setFrame:backgroundView.frame];
    [okButton addTarget:_delegate action:@selector(okButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [okButton setBackgroundColor:[UIColor clearColor]];
    [self addSubview:okButton];
}
-(void)drawAudioAnnouncement:(CGRect)rect
{
    // set the background image
    backgroundImage = [[UIImage imageNamed:@"AudioAnnouncement.jpg"] retain];
    
    UIImageView* backgroundView = [[UIImageView alloc] initWithImage:backgroundImage];
    backgroundView.frame =  CGRectMake(CGRectGetMidX(self.bounds) - CGRectGetMidX(backgroundView.bounds),
                                       CGRectGetMidY(self.bounds) - CGRectGetMidY(backgroundView.bounds),
                                       backgroundImage.size.width,
                                       backgroundImage.size.height);
    [self addSubview:backgroundView];
    
    // Setup the button
    okButton = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
    [okButton setFrame:backgroundView.frame];
    [okButton addTarget:_delegate action:@selector(okButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [okButton setBackgroundColor:[UIColor clearColor]];
    [self addSubview:okButton];
}
-(void)drawBuyChapter2:(CGRect)rect
{
    // set the background image
    backgroundImage = [[UIImage imageNamed:@"BuyChapter2.png"] retain];
    UIImageView* backgroundView = [[UIImageView alloc] initWithImage:backgroundImage];
    
    CGRect alertRect = CGRectMake(CGRectGetMidX(self.bounds) - CGRectGetMidX(backgroundView.bounds),
                                    CGRectGetMidY(self.bounds) - CGRectGetMidY(backgroundView.bounds),
                                    backgroundImage.size.width,
                                    backgroundImage.size.height);
    
    self.frame = alertRect;
    
    
    // Setup the Ok button
    okButton = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
    [okButton setFrame:CGRectMake(240,380,104,106)];
    [okButton setBackgroundImage:[UIImage imageNamed:@"YesButton.png"] forState:UIControlStateNormal];
    
    [okButton addTarget:_delegate action:@selector(okButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [okButton setBackgroundColor:[UIColor clearColor]];

    // Setup the no buton
    cancelButton = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
    [cancelButton setFrame:CGRectMake(320,510,36,37)];
    [cancelButton setBackgroundImage:[UIImage imageNamed:@"NoButton.png"] forState:UIControlStateNormal];
    [cancelButton addTarget:_delegate action:@selector(cancelButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [cancelButton setBackgroundColor:[UIColor clearColor]];

    [self addSubview:backgroundView];
    [self addSubview:okButton];
    [self addSubview:cancelButton];
}

-(void)drawBuyAllChapters:(CGRect)rect
{
    // set the background image
    backgroundImage = [[UIImage imageNamed:@"2 Offer Buy All.png"] retain];
    UIImageView* backgroundView = [[UIImageView alloc] initWithImage:backgroundImage];
    
    CGRect alertRect = CGRectMake(CGRectGetMidX(self.bounds) - CGRectGetMidX(backgroundView.bounds),
                                  CGRectGetMidY(self.bounds) - CGRectGetMidY(backgroundView.bounds),
                                  backgroundImage.size.width,
                                  backgroundImage.size.height);
    
    self.frame = alertRect;
    
    
    // Setup the Ok button
    okButton = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
    [okButton setFrame:CGRectMake(420,260,104,106)];
    [okButton setBackgroundImage:[UIImage imageNamed:@"YesButton.png"] forState:UIControlStateNormal];
    
    [okButton addTarget:_delegate action:@selector(okButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [okButton setBackgroundColor:[UIColor clearColor]];
    
    // Setup the no buton
    cancelButton = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
    [cancelButton setFrame:CGRectMake(525,315,36,37)];
    [cancelButton setBackgroundImage:[UIImage imageNamed:@"NoButton.png"] forState:UIControlStateNormal];
    [cancelButton addTarget:_delegate action:@selector(cancelButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [cancelButton setBackgroundColor:[UIColor clearColor]];
    
    [self addSubview:backgroundView];
    [self addSubview:okButton];
    [self addSubview:cancelButton];
}
-(void)drawBuyOneGetOne:(CGRect)rect
{
    // set the background image
    backgroundImage = [[UIImage imageNamed:@"BOGO.png"] retain];
    UIImageView* backgroundView = [[UIImageView alloc] initWithImage:backgroundImage];
    
    CGRect alertRect = CGRectMake(CGRectGetMidX(self.bounds) - CGRectGetMidX(backgroundView.bounds),
                                  CGRectGetMidY(self.bounds) - CGRectGetMidY(backgroundView.bounds),
                                  backgroundImage.size.width,
                                  backgroundImage.size.height);
    
    self.frame = alertRect;
    
    
    // Setup the Ok button
    okButton = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
    [okButton setFrame:CGRectMake(245,440,104, 106)];
    [okButton setBackgroundImage:[UIImage imageNamed:@"YesButton.png"] forState:UIControlStateNormal];
    
    [okButton addTarget:_delegate action:@selector(okButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [okButton setBackgroundColor:[UIColor clearColor]];
    
    // Setup the no buton
    cancelButton = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
    [cancelButton setFrame:CGRectMake(40,510,36,37)];
    [cancelButton setBackgroundImage:[UIImage imageNamed:@"NoButton.png"] forState:UIControlStateNormal];
    [cancelButton addTarget:_delegate action:@selector(cancelButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [cancelButton setBackgroundColor:[UIColor clearColor]];
    
    [self addSubview:backgroundView];
    [self addSubview:okButton];
    [self addSubview:cancelButton];
}
-(void)drawBuySwag:(CGRect)rect
{
    // set the background image
    backgroundImage = [[UIImage imageNamed:@"4 Share for Swag.png"] retain];
    UIImageView* backgroundView = [[UIImageView alloc] initWithImage:backgroundImage];
    
    CGRect alertRect = CGRectMake(CGRectGetMidX(self.bounds) - CGRectGetMidX(backgroundView.bounds),
                                  CGRectGetMidY(self.bounds) - CGRectGetMidY(backgroundView.bounds),
                                  backgroundImage.size.width,
                                  backgroundImage.size.height);
    
    self.frame = alertRect;
    
    
    // Setup the Ok button
    okButton = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
    [okButton setFrame:CGRectMake(415,250,104,106)];
    [okButton setBackgroundImage:[UIImage imageNamed:@"YesButton.png"] forState:UIControlStateNormal];
    
    [okButton addTarget:_delegate action:@selector(okButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [okButton setBackgroundColor:[UIColor clearColor]];
    
    // Setup the no buton
    cancelButton = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
    [cancelButton setFrame:CGRectMake(510,320,36,37)];
    [cancelButton setBackgroundImage:[UIImage imageNamed:@"NoButton.png"] forState:UIControlStateNormal];
    [cancelButton addTarget:_delegate action:@selector(cancelButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [cancelButton setBackgroundColor:[UIColor clearColor]];
    
    [self addSubview:backgroundView];
    [self addSubview:okButton];
    [self addSubview:cancelButton];
}


@end

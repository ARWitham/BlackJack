//
//  BlackJackAlertView.m
//  BlackJack
//
//  Created by eric white on 1/17/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "BlackJackAlertView.h"

@implementation BlackJackAlertView

-(instancetype)initWithOption:(NSBJAlertType)alertOption
{
    self = [super init];
    if (self)
    {
        self.selectedAlertOption = alertOption;
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    if (self.selectedAlertOption == NSBJFirstLaunch)
    {
        [self drawFirstLaunch:rect];
    }
    else if (self.selectedAlertOption == NSBJAudioAnnouncement)
    {
        [self drawAudioAnnouncement:rect];
    }
    else if (self.selectedAlertOption == NSBJBuyChapter2)
    {
        [self drawBuyChapter2:rect];
    }
    else if (self.selectedAlertOption == NSBJBuyAllChapters)
    {
        [self drawBuyAllChapters:rect];
    }
    else if (self.selectedAlertOption == NSBJBuyOneGetOne)
    {
        [self drawBuyOneGetOne:rect];
    }
    else if (self.selectedAlertOption == NSBJBuySwag)
    {
        [self drawBuySwag:rect];
    }

}

-(void)drawFirstLaunch:(CGRect)rect
{
    // set the background image
    self.backgroundImage = [UIImage imageNamed:@"CenterTapAnnouncement.jpg"];
    UIImageView* backgroundView = [[UIImageView alloc] initWithImage:self.backgroundImage];
    backgroundView.frame =  CGRectMake(CGRectGetMidX(self.bounds) - CGRectGetMidX(backgroundView.bounds),
                                       CGRectGetMidY(self.bounds) - CGRectGetMidY(backgroundView.bounds),
                                       self.backgroundImage.size.width,
                                       self.backgroundImage.size.height);
    [self addSubview:backgroundView];
    
    // Setup the button
    okButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [okButton setFrame:backgroundView.frame];
    [okButton addTarget:_delegate action:@selector(okButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [okButton setBackgroundColor:[UIColor clearColor]];
    [self addSubview:okButton];
}

-(void)drawAudioAnnouncement:(CGRect)rect
{
    // set the background image
    self.backgroundImage = [UIImage imageNamed:@"AudioAnnouncement.jpg"];
    
    UIImageView* backgroundView = [[UIImageView alloc] initWithImage:self.backgroundImage];
    backgroundView.frame =  CGRectMake(CGRectGetMidX(self.bounds) - CGRectGetMidX(backgroundView.bounds),
                                       CGRectGetMidY(self.bounds) - CGRectGetMidY(backgroundView.bounds),
                                       self.backgroundImage.size.width,
                                       self.backgroundImage.size.height);
    [self addSubview:backgroundView];
    
    // Setup the button
    okButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [okButton setFrame:backgroundView.frame];
    [okButton addTarget:_delegate action:@selector(okButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [okButton setBackgroundColor:[UIColor clearColor]];
    [self addSubview:okButton];
}

-(void)drawBuyChapter2:(CGRect)rect
{
    // set the background image
    self.backgroundImage = [UIImage imageNamed:@"BuyChapter2.png"];
    UIImageView* backgroundView = [[UIImageView alloc] initWithImage:self.backgroundImage];
    
    CGRect alertRect = CGRectMake(CGRectGetMidX(self.bounds) - CGRectGetMidX(backgroundView.bounds),
                                  CGRectGetMidY(self.bounds) - CGRectGetMidY(backgroundView.bounds),
                                  self.backgroundImage.size.width,
                                  self.backgroundImage.size.height);
    
    self.frame = alertRect;
    
    
    // Setup the Ok button
    okButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [okButton setFrame:CGRectMake(240,380,104,106)];
    [okButton setBackgroundImage:[UIImage imageNamed:@"YesButton.png"] forState:UIControlStateNormal];
    
    [okButton addTarget:_delegate action:@selector(okButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [okButton setBackgroundColor:[UIColor clearColor]];

    // Setup the no buton
    cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
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
    self.backgroundImage = [UIImage imageNamed:@"2 Offer Buy All.png"];
    UIImageView* backgroundView = [[UIImageView alloc] initWithImage:self.backgroundImage];
    
    CGRect alertRect = CGRectMake(CGRectGetMidX(self.bounds) - CGRectGetMidX(backgroundView.bounds),
                                  CGRectGetMidY(self.bounds) - CGRectGetMidY(backgroundView.bounds),
                                  self.backgroundImage.size.width,
                                  self.backgroundImage.size.height);
    
    self.frame = alertRect;
    
    
    // Setup the Ok button
    okButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [okButton setFrame:CGRectMake(420,260,104,106)];
    [okButton setBackgroundImage:[UIImage imageNamed:@"YesButton.png"] forState:UIControlStateNormal];
    
    [okButton addTarget:_delegate action:@selector(okButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [okButton setBackgroundColor:[UIColor clearColor]];
    
    // Setup the no buton
    cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
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
    self.backgroundImage = [UIImage imageNamed:@"BOGO.png"];
    UIImageView* backgroundView = [[UIImageView alloc] initWithImage:self.backgroundImage];
    
    CGRect alertRect = CGRectMake(CGRectGetMidX(self.bounds) - CGRectGetMidX(backgroundView.bounds),
                                  CGRectGetMidY(self.bounds) - CGRectGetMidY(backgroundView.bounds),
                                  self.backgroundImage.size.width,
                                  self.backgroundImage.size.height);
    
    self.frame = alertRect;
    
    
    // Setup the Ok button
    okButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [okButton setFrame:CGRectMake(245,440,104, 106)];
    [okButton setBackgroundImage:[UIImage imageNamed:@"YesButton.png"] forState:UIControlStateNormal];
    
    [okButton addTarget:_delegate action:@selector(okButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [okButton setBackgroundColor:[UIColor clearColor]];
    
    // Setup the no buton
    cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
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
    self.backgroundImage = [UIImage imageNamed:@"4 Share for Swag.png"];
    UIImageView* backgroundView = [[UIImageView alloc] initWithImage:self.backgroundImage];
    
    CGRect alertRect = CGRectMake(CGRectGetMidX(self.bounds) - CGRectGetMidX(backgroundView.bounds),
                                  CGRectGetMidY(self.bounds) - CGRectGetMidY(backgroundView.bounds),
                                  self.backgroundImage.size.width,
                                  self.backgroundImage.size.height);
    
    self.frame = alertRect;
    
    
    // Setup the Ok button
    okButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [okButton setFrame:CGRectMake(415,250,104,106)];
    [okButton setBackgroundImage:[UIImage imageNamed:@"YesButton.png"] forState:UIControlStateNormal];
    
    [okButton addTarget:_delegate action:@selector(okButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [okButton setBackgroundColor:[UIColor clearColor]];
    
    // Setup the no buton
    cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [cancelButton setFrame:CGRectMake(510,320,36,37)];
    [cancelButton setBackgroundImage:[UIImage imageNamed:@"NoButton.png"] forState:UIControlStateNormal];
    [cancelButton addTarget:_delegate action:@selector(cancelButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [cancelButton setBackgroundColor:[UIColor clearColor]];
    
    [self addSubview:backgroundView];
    [self addSubview:okButton];
    [self addSubview:cancelButton];
}

@end

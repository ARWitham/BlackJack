//
//  SwagViewController.m
//  BlackJack
//
//  Created by eric white on 4/5/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "SwagViewController.h"


@interface SwagViewController ()

@property (nonatomic, retain) NSMutableArray *items;

@end
@implementation SwagViewController

@synthesize carousel;
@synthesize items;

- (id)initWithCoder:(NSCoder *)decoder
{
    self = [super initWithCoder:decoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    //set up data
    self.items = [NSMutableArray array];
    for (int i = 0; i < 4; i++)
    {
        [items addObject:[NSNumber numberWithInt:i]];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //    carousel.type = iCarouselTypeCoverFlow2;
    carousel.type = iCarouselTypeRotary;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    return [items count];
}

- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index reusingView:(UIView *)view
{
    //create new view if no view is available for recycling
    //if (view == nil)
    //{
    NSString *imageName = @"CH01-TOC.jpg";
    switch (index)
    {
        case 0:
        {
            imageName = @"SWAG_BookCover_Small.jpg";
            break;
        }
        case 1:
        {
            imageName = @"SWAG_BoyWithScalpel_Small.jpg";
            break;
        }
        case 2:
        {
            imageName = @"SWAG_BookCover_Small.jpg";
            break;
        }
        case 3:
        {
            imageName = @"SWAG_BoyWithScalpel_Small.jpg";
            break;
        }

        default:
        {
            
        }
            
    }
    
    view = [[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 384.0f, 512.0f)] autorelease];
    ((UIImageView *)view).image = [UIImage imageNamed:imageName];
    view.contentMode = UIViewContentModeCenter;
    
    // Add a transparent button to open the detail view
    UIButton *button = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
    [button setFrame:CGRectMake(0, 0, 384.0f, 512.0f)];
    [button setBackgroundColor:[UIColor clearColor]];
    [button addTarget:self action:@selector(viewDetailButtonPress) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:button];

    return view;
}

- (CGFloat)carousel:(iCarousel *)_carousel valueForOption:(iCarouselOption)option withDefault:(CGFloat)value
{
    switch (option)
    {
        case iCarouselOptionFadeMax:
        {
            if (carousel.type == iCarouselTypeRotary)
            {
                return 0.6f;
            }
            return value;
        }
        case iCarouselOptionFadeMin:
        {
            if (carousel.type == iCarouselTypeRotary)
            {
                return -0.6f;
            }
            return value;
        }
        default:
        {
            return value;
        }
    }
}

-(IBAction) viewDetailButtonPress
{
    NSString *imageName;
    if (self.carousel.currentItemIndex % 2 == 0)
    {
        imageName = @"SWAG_BookCover.jpg";
    }
    else
    {
        imageName = @"SWAG_BoyWithScalpel.jpg";
    }
    self.detailImageView.image = [UIImage imageNamed:imageName];
    self.detailImageView.hidden=false;
    self.closeDetailedImageButton.hidden=FALSE;
    
}
-(IBAction) closeDetailButtonPress
{
    self.detailImageView.hidden=TRUE;
    self.closeDetailedImageButton.hidden=TRUE;
}
- (void)dealloc {
    [_detailImageView release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setDetailImageView:nil];
    [super viewDidUnload];
}
@end

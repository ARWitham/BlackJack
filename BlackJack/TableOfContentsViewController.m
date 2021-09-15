//
//  TableOfContentsViewController.m
//  BlackJack
//
//  Created by eric white on 2/10/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "TableOfContentsViewController.h"

@interface TableOfContentsViewController ()

@property (nonatomic, retain) NSMutableArray *items;

@end

@implementation TableOfContentsViewController
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
    for (int i = 0; i < 6; i++)
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
    UIButton *button = nil;
    UIButton *button2 = nil;
    UIButton *button3 = nil;
    UIButton *button4 = nil;
    
    NSLog (@"Current Index: %lu", index);

    // Find out the current state of the chapter.
    // If unpurchased
    // If archived
    // If exists
    
    //create new view if no view is available for recycling
    //if (view == nil)
    //{
        NSString *imageName = @"CH01-TOC.jpg";
        switch (index)
        {
            case 0:
            {
                imageName = @"TOC.png";
                break;
            }
            case 1:
            {
                imageName = @"Toc_Ch01_Read.jpg";
                break;
            }
            case 2:
            {
                imageName = @"Toc_Ch02_Read.jpg";
                break;
            }
            case 3:
            {
                imageName = @"Toc_Ch03_Read.jpg";
                break;
            }
            case 4:
            {
                imageName = @"Toc_Ch04_Read.jpg";
                break;
            }
            case 5:
            {
                imageName = @"Toc_Ch05_Buy.jpg";
                break;
            }
            default:
            {
                
            }

        }
        
            
        view = [[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 384.0f, 512.0f)] autorelease];
        ((UIImageView *)view).image = [UIImage imageNamed:imageName];
        view.contentMode = UIViewContentModeCenter;
    
        // Only add buttons if not on the TOC
        if (index == 1)
        {
            button = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
            [button setFrame:CGRectMake(-37,443,86,87)];
            [button setBackgroundImage:[UIImage imageNamed:@"ToC_Button.png"] forState:UIControlStateNormal];
            [button addTarget:self action:@selector(readButtonPress) forControlEvents:UIControlEventTouchUpInside];
            [view addSubview:button];

            button2 = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
            [button2 setFrame:CGRectMake(87,443,86,87)];
            [button2 setBackgroundImage:[UIImage imageNamed:@"ToC_Button.png"] forState:UIControlStateNormal];
            [button2 addTarget:self action:@selector(archiveButtonPress) forControlEvents:UIControlEventTouchUpInside];
            [view addSubview:button2];

            button3 = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
            [button3 setFrame:CGRectMake(211,443,86,87)];
            [button3 setBackgroundImage:[UIImage imageNamed:@"ToC_Button.png"] forState:UIControlStateNormal];
            [button3 addTarget:self action:@selector(media1ButtonPress) forControlEvents:UIControlEventTouchUpInside];
            [view addSubview:button3];

            button4 = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
            [button4 setFrame:CGRectMake(335,443,86,87)];
            [button4 setBackgroundImage:[UIImage imageNamed:@"ToC_Button.png"] forState:UIControlStateNormal];
            [button4 addTarget:self action:@selector(media2ButtonPress) forControlEvents:UIControlEventTouchUpInside];
            [view addSubview:button4];
        }
    // Only add buttons if not on the TOC
    else if (index > 1 && index < 5)
    {
        button = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
        [button setFrame:CGRectMake(3,443,86,87)];
        [button setBackgroundImage:[UIImage imageNamed:@"ToC_Button.png"] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(readButtonPress) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:button];
        
        button2 = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
        [button2 setFrame:CGRectMake(149,443,86,87)];
        [button2 setBackgroundImage:[UIImage imageNamed:@"ToC_Button.png"] forState:UIControlStateNormal];
        [button2 addTarget:self action:@selector(archiveButtonPress) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:button2];
        
        button3 = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
        [button3 setFrame:CGRectMake(295,443,86,87)];
        [button3 setBackgroundImage:[UIImage imageNamed:@"ToC_Button.png"] forState:UIControlStateNormal];
        [button3 addTarget:self action:@selector(media1ButtonPress) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:button3];
        
    }
    
    // Only add buttons if not on the TOC
    else if (index ==5)
    {
        button = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
        [button setFrame:CGRectMake(149,443,86,87)];
        [button setBackgroundImage:[UIImage imageNamed:@"ToC_Button.png"] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(buyButtonPress) forControlEvents:UIControlEventTouchUpInside];
        [view addSubview:button];
        
    }

    //}
    //else
    //{
        //get a reference to the label in the recycled view
        //label = (UILabel *)[view viewWithTag:1];
    //}
    
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

-(IBAction)readButtonPress
{
    UIAlertView *alertOld = [[UIAlertView alloc] initWithTitle:@"Button Press"
                                                    message:@"You pressed the Read button!"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles: nil];
    [alertOld show];
    [alertOld release];
    
    UIAlertController * alert = [UIAlertController
                                alertControllerWithTitle:@"Logout"
                                message:@"Are You Sure Want to Logout!"
                                preferredStyle:UIAlertControllerStyleAlert];

   //Add Buttons

   UIAlertAction* yesButton = [UIAlertAction
                               actionWithTitle:@"Yes"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   //Handle your yes please button action here
                                   [self clearAllData];
                               }];

   UIAlertAction* noButton = [UIAlertAction
                              actionWithTitle:@"Cancel"
                              style:UIAlertActionStyleDefault
                              handler:^(UIAlertAction * action) {
                                  //Handle no, thanks button
                              }];

   //Add your buttons to alert controller

   [alert addAction:yesButton];
   [alert addAction:noButton];

   [self presentViewController:alert animated:YES completion:nil];
    
    
}

-(IBAction)archiveButtonPress
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Button Press"
                                                    message:@"You pressed the Read button!"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles: nil];
    [alert show];
    [alert release];
}

-(IBAction)media1ButtonPress
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Button Press"
                                                    message:@"You pressed the first media button!"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles: nil];
    [alert show];
    [alert release];
}

-(IBAction)media2ButtonPress
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Button Press"
                                                    message:@"You pressed the second media button!"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles: nil];
    [alert show];
    [alert release];
}

-(IBAction)buyButtonPress
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Button Press"
                                                    message:@"You pressed the buy button!"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles: nil];
    [alert show];
    [alert release];
}

- (void)dealloc {
    [_closeButton release];
    [super dealloc];
}

- (void)viewDidDisappear:(BOOL)animated {
    [self setCloseButton:nil];
    [super viewDidDisappear:animated];
}

-(IBAction)close
{
    [self dismissModalViewControllerAnimated:TRUE];
}
@end

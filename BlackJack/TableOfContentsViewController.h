//
//  TableOfContentsViewController.h
//  BlackJack
//
//  Created by eric white on 2/10/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"

@interface TableOfContentsViewController : UIViewController <iCarouselDataSource, iCarouselDelegate>

@property (nonatomic, retain) IBOutlet iCarousel *carousel;
@property (retain, nonatomic) IBOutlet UIButton *closeButton;
-(IBAction)close;

@end

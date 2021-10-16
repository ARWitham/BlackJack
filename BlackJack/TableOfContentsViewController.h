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

@property (nonatomic, strong) IBOutlet iCarousel *carousel;
@property (strong, nonatomic) IBOutlet UIButton *closeButton;
-(IBAction)close;

@end

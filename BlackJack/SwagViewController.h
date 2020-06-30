//
//  SwagViewController.h
//  BlackJack
//
//  Created by eric white on 4/5/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"

@interface SwagViewController : UIViewController <iCarouselDataSource, iCarouselDelegate>

@property (nonatomic, retain) IBOutlet iCarousel *carousel;
@property (retain, nonatomic) IBOutlet UIButton *closeDetailedImageButton;
@property (retain, nonatomic) IBOutlet UIImageView *detailImageView;
-(IBAction) closeDetailButtonPress;
@end

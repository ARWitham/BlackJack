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

@property (nonatomic, strong) IBOutlet iCarousel *carousel;
@property (strong, nonatomic) IBOutlet UIButton *closeDetailedImageButton;
@property (strong, nonatomic) IBOutlet UIImageView *detailImageView;
-(IBAction) closeDetailButtonPress;
@end

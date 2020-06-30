//
//  RootViewController.h
//  BlackJack
//
//  Created by eric white on 10/10/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChapterViewController.h"
#import "ModelController.h"

@interface RootViewController : UIViewController <ModelControllerDelegate, UIPageViewControllerDelegate>
{
    int currentIndex;
}

@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (nonatomic) BOOL returnToReading;

@end

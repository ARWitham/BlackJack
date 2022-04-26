//
//  ModelController.h
//  BlackJack
//
//  Created by eric white on 10/10/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChapterViewController.h"

@protocol ModelControllerDelegate;

@class ChapterViewController;

@interface ModelController : NSObject <ChapterViewDelegate, UIPageViewControllerDataSource>

- (ChapterViewController *)viewControllerAtIndex:(NSUInteger)index andChapter:(NSUInteger)chapter storyboard:(UIStoryboard *)storyboard;
- (ChapterViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(ChapterViewController *)viewController;

@property(nonatomic, assign) id<ModelControllerDelegate> modelDelegate;

@end

@protocol ModelControllerDelegate <NSObject>
-(void)returnToTitlePage;
-(void)returntoLastPageRead;
-(void)turnPageAutomatically;
@end


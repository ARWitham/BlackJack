//
//  ModelController.m
//  BlackJack
//
//  Created by eric white on 10/10/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import "ModelController.h"
#import "ChapterViewController.h"
#import "GGPropertyManager.h"
#import "Chapter0Controller.h"
#import "Chapter1Controller.h"
#import "Chapter2Controller.h"
#import "Chapter3Controller.h"
#import "Chapter4Controller.h"
#import "Chapter5Controller.h"
#import "Chapter6Controller.h"
#import "Chapter7Controller.h"
#import "Chapter8Controller.h"
#import "Chapter9Controller.h"
#import "Chapter10Controller.h"
#import "Chapter11Controller.h"
#import "Chapter12Controller.h"
#import "Chapter13Controller.h"
#import "Chapter14Controller.h"
#import "Chapter15Controller.h"
#import "Chapter16Controller.h"
#import "Chapter17Controller.h"
#import "Chapter18Controller.h"
#import "Chapter19Controller.h"
#import "Chapter20Controller.h"

#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"

/*
 A controller object that manages a simple model -- a collection of month names.
 
 The controller serves as the data source for the page view controller; it therefore implements pageViewController:viewControllerBeforeViewController: and pageViewController:viewControllerAfterViewController:.
 It also implements a custom method, viewControllerAtIndex: which is useful in the implementation of the data source methods, and in the initial configuration of the application.
 
 There is no need to actually create view controllers for each page in advance -- indeed doing so incurs unnecessary overhead. Given the data model, these methods create, configure, and return a new view controller on demand.
 */

@interface ModelController()
@property (readonly, strong, nonatomic) NSArray *pageData;
@property (readonly, nonatomic) int currentChapterNumber;
@end

@implementation ModelController
@synthesize  modelDelegate= _modelDelegate;
@synthesize currentChapterNumber;

- (void)dealloc
{
    [_pageData release];
    [super dealloc];
}

- (id)init
{
    _pageData = [Chapter0Controller getChapterArray];
    currentChapterNumber = 0;
    return self;
}

- (ChapterViewController *)viewControllerAtIndex:(NSUInteger)index andChapter:(NSUInteger)chapter storyboard:(UIStoryboard *)storyboard
{
    // Load up the chapter
    [self loadPageDataForChapter:chapter];
    
    // Return the data view controller for the given index.
    if (([self.pageData count] == 0) || (index >= [self.pageData count])) {
        return nil;
    }
    
    return [self viewControllerAtIndex:index storyboard:storyboard];
}

- (ChapterViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard
{   
    // Return the data view controller for the given index.
    if (([self.pageData count] == 0) || (index >= [self.pageData count])) {
        return nil;
    }
    
    // Create a new view controller and pass suitable data.
    ChapterViewController *chapterViewController = [storyboard instantiateViewControllerWithIdentifier:@"ChapterViewController"];
    if ([self.pageData[index] isKindOfClass:[MoviePageOfBook class]])
    {
        chapterViewController.moviePage = self.pageData[index];
    }
    else if ([self.pageData[index] isKindOfClass:[TextPageOfBook class]])
    {
        chapterViewController.textPage = self.pageData[index];
    }
    chapterViewController.chapterDelegate = self;
    return chapterViewController;
}

- (NSUInteger)indexOfViewController:(ChapterViewController *)viewController
{   
     // Return the index of the given data view controller.
     // For simplicity, this implementation uses a static array of model objects and the view controller stores the model object; you can therefore use the model object to identify the index.
        if (viewController.textPage != nil)
        {
            return [self.pageData indexOfObject:viewController.textPage];
        }
        else
        {
            return [self.pageData indexOfObject:viewController.moviePage];
        }

}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(ChapterViewController *)viewController];
    if (index == NSNotFound) {
        return nil;
    }
    if (index <= 0)
    {
        // Go to the previous chapter
        int previousChapterNumber = currentChapterNumber-1;
        if (previousChapterNumber<0)
        {
            return nil;
        }
        
        [self loadPageDataForChapter:previousChapterNumber];
        [GGPropertyManager setCurrentChapterNumber:previousChapterNumber];
        currentChapterNumber = previousChapterNumber;
        index=[_pageData count]-1;
    }
    else
    {
        index--;
    }
    [GGPropertyManager setCurrentPageNumber:index];
    ChapterViewController *vc = [self viewControllerAtIndex:index storyboard:viewController.storyboard];
    vc.chapterDelegate = self;
    return vc;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(ChapterViewController *)viewController];
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index == [self.pageData count]) {
        
        // Go to the next chapter
        int nextChapterNumber = currentChapterNumber+1;
        if(nextChapterNumber>20)
        {
            return nil;
        }
        
        [self loadPageDataForChapter:nextChapterNumber];
        [GGPropertyManager setCurrentChapterNumber:nextChapterNumber];
        currentChapterNumber = nextChapterNumber;
        index=0;
    }
    
    [GGPropertyManager setCurrentPageNumber:index];
    ChapterViewController *vc = [self viewControllerAtIndex:index storyboard:viewController.storyboard];
    vc.chapterDelegate = self;
    
    if (index == [self.pageData count]-1)
    {
        vc.isFinalPage=TRUE;
    }

    return vc;
}

/*- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAtIndex:(int)index viewControllerAfterViewController:(UIViewController *)viewController
{
    if (index == NSNotFound) {
        return nil;
    }
    
    if (index == [self.pageData count]) {
        return nil;
    }
    
    ChapterViewController *vc = [self viewControllerAtIndex:index storyboard:viewController.storyboard];
    vc.chapterDelegate = self;

    if (index == [self.pageData count]-1)
    {
        vc.isFinalPage=TRUE;
    }

    return vc;
}*/

-(void)gotoTitlePage
{
    [self.modelDelegate returnToTitlePage];
}
-(void)returnToReading
{
    [self.modelDelegate returntoLastPageRead];
}
-(void)gotoNextPage
{
    [self.modelDelegate turnPageAutomatically];
}
-(void)loadPageDataForChapter:(int)inputChapter
{
    if(inputChapter == 0)
    {
        _pageData = [Chapter0Controller getChapterArray];
    }
    else if(inputChapter == 1)
    {
        _pageData = [Chapter1Controller getChapterArray];
    }
    else if(inputChapter == 2)
    {
        _pageData = [Chapter2Controller getChapterArray];
    }
    else if(inputChapter == 3)
    {
        _pageData = [Chapter3Controller getChapterArray];
    }
    else if(inputChapter == 4)
    {
        _pageData = [Chapter4Controller getChapterArray];
    }
    else if(inputChapter == 5)
    {
        _pageData = [Chapter5Controller getChapterArray];
    }
    else if(inputChapter == 6)
    {
        _pageData = [Chapter6Controller getChapterArray];
    }
    else if(inputChapter == 7)
    {
        _pageData = [Chapter7Controller getChapterArray];
    }
    else if(inputChapter == 8)
    {
        _pageData = [Chapter8Controller getChapterArray];
    }
    else if(inputChapter == 9)
    {
        _pageData = [Chapter9Controller getChapterArray];
    }
    else if(inputChapter == 10)
    {
        _pageData = [Chapter10Controller getChapterArray];
    }
    else if(inputChapter == 11)
    {
        _pageData = [Chapter11Controller getChapterArray];
    }
    else if(inputChapter == 12)
    {
        _pageData = [Chapter12Controller getChapterArray];
    }
    else if(inputChapter == 13)
    {
        _pageData = [Chapter13Controller getChapterArray];
    }
    else if(inputChapter == 14)
    {
        _pageData = [Chapter14Controller getChapterArray];
    }
    else if(inputChapter == 15)
    {
        _pageData = [Chapter15Controller getChapterArray];
    }
    else if(inputChapter == 16)
    {
        _pageData = [Chapter16Controller getChapterArray];
    }
    else if(inputChapter == 17)
    {
        _pageData = [Chapter17Controller getChapterArray];
    }
    else if(inputChapter == 18)
    {
        _pageData = [Chapter18Controller getChapterArray];
    }
    else if(inputChapter == 19)
    {
        _pageData = [Chapter19Controller getChapterArray];
    }
    else if(inputChapter == 20)
    {
        _pageData = [Chapter20Controller getChapterArray];
    }

}





@end

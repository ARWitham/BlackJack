//
//  TextPageOfBook.m
//  BlackJack
//
//  Created by eric white on 12/20/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import "TextPageOfBook.h"

@implementation TextPageOfBook

@synthesize flourishYAxis;
@synthesize backgroundPath;
@synthesize textPagePath;
@synthesize flourishName;
@synthesize flourishXAxis;
@synthesize overlay;
@synthesize oneTimeAudioURL;
@synthesize multiPageTimeAudioURL;
@synthesize oneTimeAudioDelay;

-(void)dealloc
{
    NSLog(@"calling TextPageOfBook Dealloc");
}

-(id)initWithPath:(NSString *)inputTextPageImageFilePath
    andTextPageImageFileType:(NSString *)inputTextPageImageFileType
    andBackgroundimageFilePath:(NSString *)inputBackgroundImageFilePath
    andBackgroundImageFileType:(NSString *)inputBackgroundImageFileType
    andOverlay:(BJOverlayType)inputOverlay
    andOneTimeAudioPath:(NSString *)inputOneTimeAudioPath
    andOneTimeAudioFileType:(NSString *)inputOneTimeAudioFileType
    andOneTimeAudioDelay:(int)inputOneTimeAudioDelay
    andMultiPageAudioPath:(NSString *)inputMultiPageAudioPath
    andMultiPageAudioFileType:(NSString *)inputMultiPageAudioFileType
{
    self = [super init];
    if (self)
    {
        // Set the paths
        textPagePath = [[NSBundle mainBundle] pathForResource:inputTextPageImageFilePath ofType:inputTextPageImageFileType];
        
        if (inputBackgroundImageFilePath != nil)
        {
            backgroundPath = [[NSBundle mainBundle] pathForResource:inputBackgroundImageFilePath ofType:inputBackgroundImageFileType];
        }
        
        // init flourish y axis to -1
        flourishYAxis=-1;
        overlay=inputOverlay;

        // Build one time audio URL
        oneTimeAudioURL=nil;
        if (inputOneTimeAudioPath != nil)
        {
            NSString *audioPath = [[NSBundle mainBundle] pathForResource:inputOneTimeAudioPath ofType:inputOneTimeAudioFileType];
            oneTimeAudioURL = [NSURL fileURLWithPath:audioPath];
            oneTimeAudioDelay = inputOneTimeAudioDelay;
        }

        // Build multi page audio URL
        multiPageTimeAudioURL=nil;
        if (inputMultiPageAudioPath != nil)
        {
            NSString *audioPath = [[NSBundle mainBundle] pathForResource:inputMultiPageAudioPath ofType:inputMultiPageAudioFileType];
            multiPageTimeAudioURL = [NSURL fileURLWithPath:audioPath];
        }
    }
    return self;
}

-(id)initWithPath:(NSString *)inputTextPageImageFilePath
            andTextPageImageFileType:(NSString *)inputTextPageImageFileType
            andBackgroundimageFilePath:(NSString *)inputBackgroundImageFilePath
            andBackgroundImageFileType:(NSString *)inputBackgroundImageFileType
            andFlourishName:(NSString *)inputFlourishName
            andFlourishXAxis:(int)inputFlourishXAxis
            andFlourishYAxis:(int)inputFlourishYAxis
            andOverlay:(BJOverlayType)inputOverlay
            andOneTimeAudioPath:(NSString *)inputOneTimeAudioPath
            andOneTimeAudioFileType:(NSString *)inputOneTimeAudioFileType
            andOneTimeAudioDelay:(int)inputOneTimeAudioDelay
            andMultiPageAudioPath:(NSString *)inputMultiPageAudioPath
            andMultiPageAudioFileType:(NSString *)inputMultiPageAudioFileType
{

    self = [self initWithPath:inputTextPageImageFilePath andTextPageImageFileType:inputTextPageImageFileType andBackgroundimageFilePath:inputBackgroundImageFilePath andBackgroundImageFileType:inputBackgroundImageFileType andOverlay:inputOverlay andOneTimeAudioPath:inputOneTimeAudioPath andOneTimeAudioFileType:inputOneTimeAudioFileType andOneTimeAudioDelay:inputOneTimeAudioDelay andMultiPageAudioPath:inputMultiPageAudioPath andMultiPageAudioFileType:inputMultiPageAudioFileType];
    flourishName = inputFlourishName;
    flourishYAxis = inputFlourishYAxis;
    flourishXAxis = inputFlourishXAxis;
    return self;
}

-(BOOL)displayFlourish
{
    return (flourishYAxis>-1);
}

@end

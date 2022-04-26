//
//  TextPageOfBook.m
//  BlackJack
//
//  Created by eric white on 12/20/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import "TextPageOfBook.h"

@implementation TextPageOfBook

-(void)dealloc
{
    NSLog(@"calling TextPageOfBook Dealloc");
}

-(instancetype)initWithPath:(NSString *)inputTextPageImageFilePath
    andTextPageImageFileType:(NSString *)inputTextPageImageFileType
    andBackgroundimageFilePath:(nullable NSString *)inputBackgroundImageFilePath
    andBackgroundImageFileType:(nullable NSString *)inputBackgroundImageFileType
    andOverlay:(BJOverlayType)inputOverlay
        andOneTimeAudioPath:(nullable NSString *)inputOneTimeAudioPath
    andOneTimeAudioFileType:(NSString *)inputOneTimeAudioFileType
    andOneTimeAudioDelay:(int)inputOneTimeAudioDelay
    andMultiPageAudioPath:(nullable NSString *)inputMultiPageAudioPath
    andMultiPageAudioFileType:(nullable NSString *)inputMultiPageAudioFileType
{
    self = [super init];
    if (self)
    {
        // Set the paths
        self.textPagePath = [[NSBundle mainBundle] pathForResource:inputTextPageImageFilePath ofType:inputTextPageImageFileType];
        
        if (inputBackgroundImageFilePath != nil)
        {
            self.backgroundPath = [[NSBundle mainBundle] pathForResource:inputBackgroundImageFilePath ofType:inputBackgroundImageFileType];
        }
        
        // init flourish y axis to -1
        self.flourishYAxis=-1;
        self.overlay=inputOverlay;

        // Build one time audio URL
        self.oneTimeAudioURL=nil;
        if (inputOneTimeAudioPath != nil)
        {
            NSString *audioPath = [[NSBundle mainBundle] pathForResource:inputOneTimeAudioPath ofType:inputOneTimeAudioFileType];
            self.oneTimeAudioURL = [NSURL fileURLWithPath:audioPath];
            self.oneTimeAudioDelay = inputOneTimeAudioDelay;
        }

        // Build multi page audio URL
        self.multiPageTimeAudioURL=nil;
        if (inputMultiPageAudioPath != nil)
        {
            NSString *audioPath = [[NSBundle mainBundle] pathForResource:inputMultiPageAudioPath ofType:inputMultiPageAudioFileType];
            self.multiPageTimeAudioURL = [NSURL fileURLWithPath:audioPath];
        }
    }
    return self;
}

-(id)initWithPath:(NSString *)inputTextPageImageFilePath
            andTextPageImageFileType:(NSString *)inputTextPageImageFileType
            andBackgroundimageFilePath:(nullable NSString *)inputBackgroundImageFilePath
            andBackgroundImageFileType:(nullable NSString *)inputBackgroundImageFileType
            andFlourishName:(NSString *)inputFlourishName
            andFlourishXAxis:(int)inputFlourishXAxis
            andFlourishYAxis:(int)inputFlourishYAxis
            andOverlay:(BJOverlayType)inputOverlay
            andOneTimeAudioPath:(nullable NSString *)inputOneTimeAudioPath
            andOneTimeAudioFileType:(NSString *)inputOneTimeAudioFileType
            andOneTimeAudioDelay:(int)inputOneTimeAudioDelay
            andMultiPageAudioPath:(nullable NSString *)inputMultiPageAudioPath
            andMultiPageAudioFileType:(nullable NSString *)inputMultiPageAudioFileType
{

    self = [self initWithPath:inputTextPageImageFilePath andTextPageImageFileType:inputTextPageImageFileType andBackgroundimageFilePath:inputBackgroundImageFilePath andBackgroundImageFileType:inputBackgroundImageFileType andOverlay:inputOverlay andOneTimeAudioPath:inputOneTimeAudioPath andOneTimeAudioFileType:inputOneTimeAudioFileType andOneTimeAudioDelay:inputOneTimeAudioDelay andMultiPageAudioPath:inputMultiPageAudioPath andMultiPageAudioFileType:inputMultiPageAudioFileType];
    self.flourishName = inputFlourishName;
    self.flourishYAxis = inputFlourishYAxis;
    self.flourishXAxis = inputFlourishXAxis;
    return self;
}

-(BOOL)displayFlourish
{
    return (self.flourishYAxis>-1);
}

@end

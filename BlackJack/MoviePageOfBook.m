//
//  MoviePageOfBook.m
//  BlackJack
//
//  Created by eric white on 12/20/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import "MoviePageOfBook.h"

@implementation MoviePageOfBook

@synthesize autoPlay;
@synthesize repeat;
@synthesize movieURL;
@synthesize audioURL;
@synthesize foregroundPath;
@synthesize backgroundPath;
@synthesize fadeBackground;
@synthesize autoPageTurn;

-(id)initWithPath:(NSString *)inputPath andFileType:(NSString *)inputFileType andOneTimeAudioPath:(NSString *)inputOneTimeAudioPath andOneTimeAudioFileType:(NSString *)inputOneTimeAudioFileType andAutoPlay:(BOOL) inputAutoPlaySetting andRepeat:(BOOL) inputRepeatSetting andForegroundimageFilePath:(NSString *)inputForegroundImageFilePath andForegroundImageFileType:(NSString *)inputForegroundImageFileType andBackgroundimageFilePath:(NSString *)inputBackgroundImageFilePath andBackgroundImageFileType:(NSString *)inputBackgroundImageFileType
    andFadeBackground:(BOOL) inputFadeBackground
    andAutoPageTurn:(BOOL) inputAutoPageTurn
{
    self = [super init];
    if (self)
    {
        // Set properties
        autoPlay = inputAutoPlaySetting;
        repeat = inputRepeatSetting;
        fadeBackground = inputFadeBackground;
        autoPageTurn = inputAutoPageTurn;
        //lastPage = inputIsLastPage;
        
        // Build movie URL
        NSString *moviePath = [[NSBundle mainBundle] pathForResource:inputPath ofType:inputFileType];
        movieURL = [[NSURL fileURLWithPath:moviePath] retain];
        
        // Build audio URL
        audioURL=nil;
        if (inputOneTimeAudioPath != nil)
        {
            NSString *audioPath = [[NSBundle mainBundle] pathForResource:inputOneTimeAudioPath ofType:inputOneTimeAudioFileType];
            audioURL = [[NSURL fileURLWithPath:audioPath] retain];
        }
        if (inputForegroundImageFilePath != nil)
        {
            foregroundPath = [[[NSBundle mainBundle] pathForResource:inputForegroundImageFilePath ofType:inputForegroundImageFileType] retain];
        }
        if (inputBackgroundImageFilePath != nil)
        {
            backgroundPath = [[[NSBundle mainBundle] pathForResource:inputBackgroundImageFilePath ofType:inputBackgroundImageFileType] retain];
        }

    }
    return self;
}

@end

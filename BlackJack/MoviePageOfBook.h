//
//  MoviePageOfBook.h
//  BlackJack
//
//  Created by eric white on 12/20/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import "MoviePageOfBook.h"

@interface MoviePageOfBook : NSObject
@property(nonatomic, strong)NSString *foregroundPath;
@property(nonatomic, strong)NSString *backgroundPath;
@property(nonatomic, strong) NSURL *movieURL;
@property(nonatomic, strong) NSURL *audioURL;
@property(nonatomic, readonly) BOOL autoPlay;
@property(nonatomic, readonly) BOOL repeat;
@property(nonatomic, readonly) BOOL fadeBackground;
@property(nonatomic, readonly) BOOL autoPageTurn;

-(id)initWithPath:(NSString *)inputPath andFileType:(NSString *)inputFileType
                                        andOneTimeAudioPath:(NSString *)inputOneTimeAudioPath
                                        andOneTimeAudioFileType:(NSString *)inputOneTimeAudioFileType
                                        andAutoPlay:(BOOL) inputAutoPlaySetting
                                        andRepeat:(BOOL) inputRepeatSetting
                                        andForegroundimageFilePath:(NSString *)inputForegroundImageFilePath
                                        andForegroundImageFileType:(NSString *)inputForegroundImageFileType
                                        andBackgroundimageFilePath:(NSString *)inputBackgroundImageFilePath
                                        andBackgroundImageFileType:(NSString *)inputBackgroundImageFileType
                                        andFadeBackground:(BOOL) inputFadeBackground
                                        andAutoPageTurn:(BOOL) inputAutoPageTurn;
@end

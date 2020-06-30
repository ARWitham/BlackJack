//
//  TextPageOfBook.h
//  BlackJack
//
//  Created by eric white on 12/20/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import "TextPageOfBook.h"

enum {
    kBJCloundsOverlay = 1,
    kBJSnowOverlay = 2,
    kBJCopLightOverlay =3,
    kBJPixieOverlay=4,
    kBJEmberOverlay=5,
    kBJFireOverlay=6,
    kBJMotesOverlay=7,
    kBJIrrationalHypothermiaOverlay=8,
    kBJPageFadeIn=9,
    kBJFogOverlay=10
};
typedef NSUInteger BJOverlayType;

@interface TextPageOfBook : NSObject
@property(nonatomic, retain)NSString *textPagePath;
@property(nonatomic, retain)NSString *backgroundPath;
@property(nonatomic, retain)NSString *flourishName;
@property(nonatomic) int flourishXAxis;
@property(nonatomic) int flourishYAxis;
@property(nonatomic) BJOverlayType overlay;
@property(nonatomic, retain) NSURL *oneTimeAudioURL;
@property(nonatomic, retain) NSURL *multiPageTimeAudioURL;
@property(nonatomic) int oneTimeAudioDelay;

-(id)initWithPath:(NSString *)inputTextPageImageFilePath
            andTextPageImageFileType:(NSString *)inputTextPageImageFileType
            andBackgroundimageFilePath:(NSString *)inputBackgroundImageFilePath
            andBackgroundImageFileType:(NSString *)inputBackgroundImageFileType
            andOverlay:(BJOverlayType)inputOverlay
            andOneTimeAudioPath:(NSString *)inputOneTimeAudioPath
            andOneTimeAudioFileType:(NSString *)inputOneTimeAudioFileType
            andOneTimeAudioDelay:(int)inputOneTimeAudioDelay
            andMultiPageAudioPath:(NSString *)inputMultiPageAudioPath
            andMultiPageAudioFileType:(NSString *)inputMultiPageAudioFileType;



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
            andMultiPageAudioFileType:(NSString *)inputMultiPageAudioFileType;



-(BOOL)displayFlourish;
@end

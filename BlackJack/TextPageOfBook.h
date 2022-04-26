//
//  TextPageOfBook.h
//  BlackJack
//
//  Created by eric white on 12/20/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import "TextPageOfBook.h"

typedef NS_ENUM(NSUInteger, BJOverlayType) {
    kBJNone = 0,
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

@interface TextPageOfBook : NSObject
NS_ASSUME_NONNULL_BEGIN

@property(nonatomic, strong)NSString *textPagePath;
@property(nonatomic, strong)NSString *backgroundPath;
@property(nonatomic, strong)NSString *flourishName;
@property(nonatomic) int flourishXAxis;
@property(nonatomic) int flourishYAxis;
@property(nonatomic) BJOverlayType overlay;
@property(nonatomic, strong, nullable) NSURL *oneTimeAudioURL;
@property(nonatomic, strong, nullable) NSURL *multiPageTimeAudioURL;
@property(nonatomic) int oneTimeAudioDelay;

-(id)initWithPath:(nullable NSString *)inputTextPageImageFilePath
            andTextPageImageFileType:(nullable NSString *)inputTextPageImageFileType
            andBackgroundimageFilePath:(nullable NSString *)inputBackgroundImageFilePath
            andBackgroundImageFileType:(nullable NSString *)inputBackgroundImageFileType
            andOverlay:(BJOverlayType)inputOverlay
            andOneTimeAudioPath:(nullable NSString *)inputOneTimeAudioPath
            andOneTimeAudioFileType:(nullable NSString *)inputOneTimeAudioFileType
            andOneTimeAudioDelay:(int)inputOneTimeAudioDelay
            andMultiPageAudioPath:(nullable NSString *)inputMultiPageAudioPath
            andMultiPageAudioFileType:(nullable NSString *)inputMultiPageAudioFileType;



-(id)initWithPath:(nullable NSString *)inputTextPageImageFilePath
            andTextPageImageFileType:(nullable NSString *)inputTextPageImageFileType
            andBackgroundimageFilePath:(nullable NSString *)inputBackgroundImageFilePath
            andBackgroundImageFileType:(nullable NSString *)inputBackgroundImageFileType
            andFlourishName:(NSString *)inputFlourishName
            andFlourishXAxis:(int)inputFlourishXAxis
            andFlourishYAxis:(int)inputFlourishYAxis
            andOverlay:(BJOverlayType)inputOverlay
            andOneTimeAudioPath:(nullable NSString *)inputOneTimeAudioPath
            andOneTimeAudioFileType:(nullable NSString *)inputOneTimeAudioFileType
            andOneTimeAudioDelay:(int)inputOneTimeAudioDelay
            andMultiPageAudioPath:(nullable NSString *)inputMultiPageAudioPath
            andMultiPageAudioFileType:(nullable NSString *)inputMultiPageAudioFileType;



-(BOOL)displayFlourish;

NS_ASSUME_NONNULL_END
@end

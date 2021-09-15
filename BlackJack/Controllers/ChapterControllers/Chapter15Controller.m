//
//  Chapter15Controller.m
//  BlackJack
//
//  Created by eric white on 4/10/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "Chapter15Controller.h"
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"

@implementation Chapter15Controller
+(NSArray *)getChapterArray
{
    MoviePageOfBook *ch15Cover = [[MoviePageOfBook alloc] initWithPath:@"CH15_Cover" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false  andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH15_Cover" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    MoviePageOfBook *ch15Page01 = [[MoviePageOfBook alloc] initWithPath:@"CH15_p1" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH15_p1" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch15Page02 = [[TextPageOfBook alloc] initWithPath:@"CH15-2" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH015_DemonParchment1" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page03 = [[TextPageOfBook alloc] initWithPath:@"CH15-3" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page04 = [[TextPageOfBook alloc] initWithPath:@"CH15-4" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page05 = [[TextPageOfBook alloc] initWithPath:@"CH15-5" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page06 = [[TextPageOfBook alloc] initWithPath:@"CH15-6" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page07 = [[TextPageOfBook alloc] initWithPath:@"CH15-7" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page08 = [[TextPageOfBook alloc] initWithPath:@"CH15-8" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page09 = [[TextPageOfBook alloc] initWithPath:@"CH15-9" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment8" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page10 = [[TextPageOfBook alloc] initWithPath:@"CH15-10" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment9" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page11 = [[TextPageOfBook alloc] initWithPath:@"CH15-11" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment10" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page12 = [[TextPageOfBook alloc] initWithPath:@"CH15-12" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment11" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page13 = [[TextPageOfBook alloc] initWithPath:@"CH15-13" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment12" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page14 = [[TextPageOfBook alloc] initWithPath:@"CH15-14" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment13" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page15 = [[TextPageOfBook alloc] initWithPath:@"CH15-15" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment14" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page16 = [[TextPageOfBook alloc] initWithPath:@"CH15-16" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment15" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page17 = [[TextPageOfBook alloc] initWithPath:@"CH15-17" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment16" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page18 = [[TextPageOfBook alloc] initWithPath:@"CH15-18" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page19 = [[TextPageOfBook alloc] initWithPath:@"CH15-19" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page20 = [[TextPageOfBook alloc] initWithPath:@"CH15-20" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page21 = [[TextPageOfBook alloc] initWithPath:@"CH15-21" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page22 = [[TextPageOfBook alloc] initWithPath:@"CH15-22" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page23 = [[TextPageOfBook alloc] initWithPath:@"CH15-23" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page24 = [[TextPageOfBook alloc] initWithPath:@"CH15-24" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page25 = [[TextPageOfBook alloc] initWithPath:@"CH15-25" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH15_Crimson_1" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page26 = [[TextPageOfBook alloc] initWithPath:@"CH15-26" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH15_Crimson_2" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch15Page27 = [[MoviePageOfBook alloc] initWithPath:@"CH15_KnightOfTheBurningTower" andFileType:@"mov" andOneTimeAudioPath:@"CH15_Knight of the Burning Tower" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH15_KnightOfTheBurningTower" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch15Page28 = [[TextPageOfBook alloc] initWithPath:@"CH15-28" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH15_Crimson_4" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page29 = [[TextPageOfBook alloc] initWithPath:@"CH15-29" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH15_Crimson_5" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch15Page30 = [[TextPageOfBook alloc] initWithPath:@"CH15-30" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH15_Crimson_1" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch15Page31 = [[MoviePageOfBook alloc] initWithPath:@"CH15_p33" andFileType:@"mov" andOneTimeAudioPath:@"CH15_Demon Rollon" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH15_p33" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch15Page32 = [[TextPageOfBook alloc] initWithPath:@"CH15-32" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH15_DemonParchment3" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    
    
    return [[NSArray alloc] initWithObjects:
            ch15Cover,
            ch15Page01,
            ch15Page02,
            ch15Page03,
            ch15Page04,
            ch15Page05,
            ch15Page06,
            ch15Page07,
            ch15Page08,
            ch15Page09,
            ch15Page10,
            ch15Page11,
            ch15Page12,
            ch15Page13,
            ch15Page14,
            ch15Page15,
            ch15Page16,
            ch15Page17,
            ch15Page18,
            ch15Page19,
            ch15Page20,
            ch15Page21,
            ch15Page22,
            ch15Page23,
            ch15Page24,
            ch15Page25,
            ch15Page26,
            ch15Page27,
            ch15Page28,
            ch15Page29,
            ch15Page30,
            ch15Page31,
            ch15Page32,
            nil];
}
@end

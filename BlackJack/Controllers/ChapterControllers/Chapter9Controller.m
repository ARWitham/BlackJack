//
//  Chapter9Controller.m
//  BlackJack
//
//  Created by eric white on 4/10/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "Chapter9Controller.h"
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"

@implementation Chapter9Controller
+(NSArray *)getChapterArray
{
    MoviePageOfBook *ch09Cover = [[MoviePageOfBook alloc] initWithPath:@"CH09_Cover" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false  andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH09_Cover" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    MoviePageOfBook *ch09Page01 = [[MoviePageOfBook alloc] initWithPath:@"CH09_p1" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH09_p1" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch09Page02 = [[TextPageOfBook alloc] initWithPath:@"CH09-2" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page03 = [[TextPageOfBook alloc] initWithPath:@"CH09-3" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page04 = [[TextPageOfBook alloc] initWithPath:@"CH09-4" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page05 = [[TextPageOfBook alloc] initWithPath:@"CH09-5" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page06 = [[TextPageOfBook alloc] initWithPath:@"CH09-6" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page07 = [[TextPageOfBook alloc] initWithPath:@"CH09-7" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page08 = [[TextPageOfBook alloc] initWithPath:@"CH09-8" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch09Page09 = [[MoviePageOfBook alloc] initWithPath:@"CH09_HeadOnAStick" andFileType:@"mov" andOneTimeAudioPath:@"CH09 Head on a Stick (1)" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH09_HeadOnAStick" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch09Page10 = [[TextPageOfBook alloc] initWithPath:@"CH09-10" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment9" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page11 = [[TextPageOfBook alloc] initWithPath:@"CH09-11" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment10" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page12 = [[TextPageOfBook alloc] initWithPath:@"CH09-12" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment11" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page13 = [[TextPageOfBook alloc] initWithPath:@"CH09-13" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment12" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page14 = [[TextPageOfBook alloc] initWithPath:@"CH09-14" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment13" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page15 = [[TextPageOfBook alloc] initWithPath:@"CH09-15" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment14" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    MoviePageOfBook *ch09Page16 = [[MoviePageOfBook alloc] initWithPath:@"CH09_p16" andFileType:@"mov" andOneTimeAudioPath:@"CH09_Demon Rollon" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH09_p16" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch09Page17 = [[TextPageOfBook alloc] initWithPath:@"CH09-17" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH09_DemonParchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page18 = [[TextPageOfBook alloc] initWithPath:@"CH09-18" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH09_DemonParchment2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page19 = [[TextPageOfBook alloc] initWithPath:@"CH09-19" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page20 = [[TextPageOfBook alloc] initWithPath:@"CH09-20" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJPageFadeIn andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page21 = [[TextPageOfBook alloc] initWithPath:@"CH09-21" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJPageFadeIn andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page22 = [[TextPageOfBook alloc] initWithPath:@"CH09-22" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page23 = [[TextPageOfBook alloc] initWithPath:@"CH09-23" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page24 = [[TextPageOfBook alloc] initWithPath:@"CH09-24" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page25 = [[TextPageOfBook alloc] initWithPath:@"CH09-25" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page26 = [[TextPageOfBook alloc] initWithPath:@"CH09-26" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page27 = [[TextPageOfBook alloc] initWithPath:@"CH09-27" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:kBJPageFadeIn andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page28 = [[TextPageOfBook alloc] initWithPath:@"CH09-28" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH09_Madrigal Verde" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch09Page29 = [[TextPageOfBook alloc] initWithPath:@"CH09-29" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment8" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page30 = [[TextPageOfBook alloc] initWithPath:@"CH09-30" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment9" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page31 = [[TextPageOfBook alloc] initWithPath:@"CH09-31" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment10" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page32 = [[TextPageOfBook alloc] initWithPath:@"CH09-32" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment11" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page33 = [[TextPageOfBook alloc] initWithPath:@"CH09-33" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment12" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page34 = [[TextPageOfBook alloc] initWithPath:@"CH09-34" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment13" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page35 = [[TextPageOfBook alloc] initWithPath:@"CH09-35" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment14" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page36 = [[TextPageOfBook alloc] initWithPath:@"CH09-36" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment15" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page37 = [[TextPageOfBook alloc] initWithPath:@"CH09-37" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment16" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page38 = [[TextPageOfBook alloc] initWithPath:@"CH09-38" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page39 = [[TextPageOfBook alloc] initWithPath:@"CH09-39" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch09Page40 = [[MoviePageOfBook alloc] initWithPath:@"CH09_IceCave" andFileType:@"mov" andOneTimeAudioPath:@"CH09_Ice Hill Swarm" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH09_IceCave" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch09Page41 = [[TextPageOfBook alloc] initWithPath:@"CH09-41" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page42 = [[TextPageOfBook alloc] initWithPath:@"CH09-42" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch09Page43 = [[TextPageOfBook alloc] initWithPath:@"CH09-43" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    
    
    return [[NSArray alloc] initWithObjects:
            ch09Cover,
            ch09Page01,
            ch09Page02,
            ch09Page03,
            ch09Page04,
            ch09Page05,
            ch09Page06,
            ch09Page07,
            ch09Page08,
            ch09Page09,
            ch09Page10,
            ch09Page11,
            ch09Page12,
            ch09Page13,
            ch09Page14,
            ch09Page15,
            ch09Page16,
            ch09Page17,
            ch09Page18,
            ch09Page19,
            ch09Page20,
            ch09Page21,
            ch09Page22,
            ch09Page23,
            ch09Page24,
            ch09Page25,
            ch09Page26,
            ch09Page27,
            ch09Page28,
            ch09Page29,
            ch09Page30,
            ch09Page31,
            ch09Page32,
            ch09Page33,
            ch09Page34,
            ch09Page35,
            ch09Page36,
            ch09Page37,
            ch09Page38,
            ch09Page39,
            ch09Page40,
            ch09Page41,
            ch09Page42,
            ch09Page43,
            nil];
}
@end

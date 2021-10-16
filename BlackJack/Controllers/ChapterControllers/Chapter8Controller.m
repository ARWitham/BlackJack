//
//  Chapter8Controller.m
//  BlackJack
//
//  Created by eric white on 4/10/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "Chapter8Controller.h"
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"

@implementation Chapter8Controller
+(NSArray *)getChapterArray
{
    MoviePageOfBook *ch08Cover = [[MoviePageOfBook alloc] initWithPath:@"CH08_Cover" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false  andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH08_Cover" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    MoviePageOfBook *ch08Page01 = [[MoviePageOfBook alloc] initWithPath:@"CH08_p1" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH08_p1" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch08Page02 = [[TextPageOfBook alloc] initWithPath:@"CH08-2" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page03 = [[TextPageOfBook alloc] initWithPath:@"CH08-3" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page04 = [[TextPageOfBook alloc] initWithPath:@"CH08-4" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page05 = [[TextPageOfBook alloc] initWithPath:@"CH08-5" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJFireOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page06 = [[TextPageOfBook alloc] initWithPath:@"CH08-6" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJFireOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page07 = [[TextPageOfBook alloc] initWithPath:@"CH08-7" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:kBJFireOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page08 = [[TextPageOfBook alloc] initWithPath:@"CH08-8" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:kBJFireOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page09 = [[TextPageOfBook alloc] initWithPath:@"CH08-9" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment8" andBackgroundImageFileType:@"jpg" andOverlay:kBJFireOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page10 = [[TextPageOfBook alloc] initWithPath:@"CH08-10" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment9" andBackgroundImageFileType:@"jpg" andOverlay:kBJFireOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page11 = [[TextPageOfBook alloc] initWithPath:@"CH08-11" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment10" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page12 = [[TextPageOfBook alloc] initWithPath:@"CH08-12" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment11" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page13 = [[TextPageOfBook alloc] initWithPath:@"CH08-13" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment12" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page14 = [[TextPageOfBook alloc] initWithPath:@"CH08-14" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment13" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page15 = [[TextPageOfBook alloc] initWithPath:@"CH08-15" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment14" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page16 = [[TextPageOfBook alloc] initWithPath:@"CH08-16" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment15" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page17 = [[TextPageOfBook alloc] initWithPath:@"CH08-17" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment16" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page18 = [[TextPageOfBook alloc] initWithPath:@"CH08-18" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page19 = [[TextPageOfBook alloc] initWithPath:@"CH08-19" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page20 = [[TextPageOfBook alloc] initWithPath:@"CH08-20" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page21 = [[TextPageOfBook alloc] initWithPath:@"CH08-21" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJMotesOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page22 = [[TextPageOfBook alloc] initWithPath:@"CH08-22" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJMotesOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page23 = [[TextPageOfBook alloc] initWithPath:@"CH08-23" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:kBJMotesOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page24 = [[TextPageOfBook alloc] initWithPath:@"CH08-24" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJMotesOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page25 = [[TextPageOfBook alloc] initWithPath:@"CH08-25" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJMotesOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch08Page26 = [[MoviePageOfBook alloc] initWithPath:@"CH08_WalkingWounded" andFileType:@"mov" andOneTimeAudioPath:@"CH08 Walking Wounded" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH08_WalkingWounded" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch08Page27 = [[TextPageOfBook alloc] initWithPath:@"CH08-27" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page28 = [[TextPageOfBook alloc] initWithPath:@"CH08-28" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page29 = [[TextPageOfBook alloc] initWithPath:@"CH08-29" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment8" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page30 = [[TextPageOfBook alloc] initWithPath:@"CH08-30" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment9" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page31 = [[TextPageOfBook alloc] initWithPath:@"CH08-31" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment10" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:@"CH08_Standalone SFX - Thump and Shudder" andOneTimeAudioFileType:@"wav" andOneTimeAudioDelay:6 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page32 = [[TextPageOfBook alloc] initWithPath:@"CH08-32" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment11" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page33 = [[TextPageOfBook alloc] initWithPath:@"CH08-33" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment12" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch08Page34 = [[MoviePageOfBook alloc] initWithPath:@"CH08_Shockwave" andFileType:@"mov" andOneTimeAudioPath:@"CH08_Standalone SFX - Shockwave Ch8" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH08_Shockwave" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch08Page35 = [[TextPageOfBook alloc] initWithPath:@"CH08-35" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment14" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page36 = [[TextPageOfBook alloc] initWithPath:@"CH08-36" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment15" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch08Page37 = [[TextPageOfBook alloc] initWithPath:@"CH08-37" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment16" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch08Page38 = [[MoviePageOfBook alloc] initWithPath:@"CH08_BurnedPage" andFileType:@"mov" andOneTimeAudioPath:@"CH08_Burn Off Page" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH08_BurnedPage" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];

    
    
    return [[NSArray alloc] initWithObjects:
            ch08Cover,
            ch08Page01,
            ch08Page02,
            ch08Page03,
            ch08Page04,
            ch08Page05,
            ch08Page06,
            ch08Page07,
            ch08Page08,
            ch08Page09,
            ch08Page10,
            ch08Page11,
            ch08Page12,
            ch08Page13,
            ch08Page14,
            ch08Page15,
            ch08Page16,
            ch08Page17,
            ch08Page18,
            ch08Page19,
            ch08Page20,
            ch08Page21,
            ch08Page22,
            ch08Page23,
            ch08Page24,
            ch08Page25,
            ch08Page26,
            ch08Page27,
            ch08Page28,
            ch08Page29,
            ch08Page30,
            ch08Page31,
            ch08Page32,
            ch08Page33,
            ch08Page34,
            ch08Page35,
            ch08Page36,
            ch08Page37,
            ch08Page38,
            nil];
}
@end

//
//  Chapter18Controller.m
//  BlackJack
//
//  Created by eric white on 4/10/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "Chapter18Controller.h"
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"

@implementation Chapter18Controller
+(NSArray *)getChapterArray
{
    MoviePageOfBook *ch18Cover = [[MoviePageOfBook alloc] initWithPath:@"CH18_Cover" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false  andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH18_Cover" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    MoviePageOfBook *ch18Page01 = [[MoviePageOfBook alloc] initWithPath:@"CH18_p1" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH18_p1" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch18Page02 = [[TextPageOfBook alloc] initWithPath:@"CH18-2" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page03 = [[TextPageOfBook alloc] initWithPath:@"CH18-3" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page04 = [[TextPageOfBook alloc] initWithPath:@"CH18-4" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page05 = [[TextPageOfBook alloc] initWithPath:@"CH18-5" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page06 = [[TextPageOfBook alloc] initWithPath:@"CH18-6" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page07 = [[TextPageOfBook alloc] initWithPath:@"CH18-7" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page08 = [[TextPageOfBook alloc] initWithPath:@"CH18-8" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page09 = [[TextPageOfBook alloc] initWithPath:@"CH18-9" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment8" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page10 = [[TextPageOfBook alloc] initWithPath:@"CH18-10" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment9" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch18Page11 = [[MoviePageOfBook alloc] initWithPath:@"CH18_Shockwave" andFileType:@"mov" andOneTimeAudioPath:@"CH18_Shockwave" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH18_Shockwave" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch18Page12 = [[TextPageOfBook alloc] initWithPath:@"CH18-12" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment11" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page13 = [[TextPageOfBook alloc] initWithPath:@"CH18-13" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment12" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page14 = [[TextPageOfBook alloc] initWithPath:@"CH18-14" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment13" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page15 = [[TextPageOfBook alloc] initWithPath:@"CH18-15" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment14" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page16 = [[TextPageOfBook alloc] initWithPath:@"CH18-16" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment15" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page17 = [[TextPageOfBook alloc] initWithPath:@"CH18-17" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment16" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page18 = [[TextPageOfBook alloc] initWithPath:@"CH18-18" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page19 = [[TextPageOfBook alloc] initWithPath:@"CH18-19" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"antique3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page20 = [[TextPageOfBook alloc] initWithPath:@"CH18-20" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page21 = [[TextPageOfBook alloc] initWithPath:@"CH18-21" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page22 = [[TextPageOfBook alloc] initWithPath:@"CH18-22" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page23 = [[TextPageOfBook alloc] initWithPath:@"CH18-23" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page24 = [[TextPageOfBook alloc] initWithPath:@"CH18-24" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page25 = [[TextPageOfBook alloc] initWithPath:@"CH18-25" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page26 = [[TextPageOfBook alloc] initWithPath:@"CH18-26" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page27 = [[TextPageOfBook alloc] initWithPath:@"CH18-27" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page28 = [[TextPageOfBook alloc] initWithPath:@"CH18-28" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page29 = [[TextPageOfBook alloc] initWithPath:@"CH18-29" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment8" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page30 = [[TextPageOfBook alloc] initWithPath:@"CH18-30" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH15_Crimson_3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page31 = [[TextPageOfBook alloc] initWithPath:@"CH18-31" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH15_Crimson_4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page32 = [[TextPageOfBook alloc] initWithPath:@"CH18-32" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH15_Crimson_5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page33 = [[TextPageOfBook alloc] initWithPath:@"CH18-33" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment12" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page34 = [[TextPageOfBook alloc] initWithPath:@"CH18-34" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment13" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page35 = [[TextPageOfBook alloc] initWithPath:@"CH18-35" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment14" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page36 = [[TextPageOfBook alloc] initWithPath:@"CH18-36" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment15" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page37 = [[TextPageOfBook alloc] initWithPath:@"CH18-37" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment16" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page38 = [[TextPageOfBook alloc] initWithPath:@"CH18-38" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page39 = [[TextPageOfBook alloc] initWithPath:@"CH18-39" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page40 = [[TextPageOfBook alloc] initWithPath:@"CH18-40" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page41 = [[TextPageOfBook alloc] initWithPath:@"CH18-41" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page42 = [[TextPageOfBook alloc] initWithPath:@"CH18-42" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page43 = [[TextPageOfBook alloc] initWithPath:@"CH18-43" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch18Page44 = [[TextPageOfBook alloc] initWithPath:@"CH18-44" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    
    
    return [[NSArray alloc] initWithObjects:
            ch18Cover,
            ch18Page01,
            ch18Page02,
            ch18Page03,
            ch18Page04,
            ch18Page05,
            ch18Page06,
            ch18Page07,
            ch18Page08,
            ch18Page09,
            ch18Page10,
            ch18Page11,
            ch18Page12,
            ch18Page13,
            ch18Page14,
            ch18Page15,
            ch18Page16,
            ch18Page17,
            ch18Page18,
            ch18Page19,
            ch18Page20,
            ch18Page21,
            ch18Page22,
            ch18Page23,
            ch18Page24,
            ch18Page25,
            ch18Page26,
            ch18Page27,
            ch18Page28,
            ch18Page29,
            ch18Page30,
            ch18Page31,
            ch18Page32,
            ch18Page33,
            ch18Page34,
            ch18Page35,
            ch18Page36,
            ch18Page37,
            ch18Page38,
            ch18Page39,
            ch18Page40,
            ch18Page41,
            ch18Page42,
            ch18Page43,
            ch18Page44,
            nil];
}
@end

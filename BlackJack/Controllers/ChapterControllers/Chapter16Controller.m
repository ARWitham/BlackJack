//
//  Chapter16Controller.m
//  BlackJack
//
//  Created by eric white on 4/10/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "Chapter16Controller.h"
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"

@implementation Chapter16Controller
+(NSArray *)getChapterArray
{
    MoviePageOfBook *ch16Cover = [[MoviePageOfBook alloc] initWithPath:@"CH16_Cover" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false  andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH16_Cover" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    MoviePageOfBook *ch16Page01 = [[MoviePageOfBook alloc] initWithPath:@"CH16_p1" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH16_p1" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch16Page02 = [[TextPageOfBook alloc] initWithPath:@"CH16-2" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page03 = [[TextPageOfBook alloc] initWithPath:@"CH16-3" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page04 = [[TextPageOfBook alloc] initWithPath:@"CH16-4" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page05 = [[TextPageOfBook alloc] initWithPath:@"CH16-5" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page06 = [[TextPageOfBook alloc] initWithPath:@"CH16-6" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page07 = [[TextPageOfBook alloc] initWithPath:@"CH16-7" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page08 = [[TextPageOfBook alloc] initWithPath:@"CH16-8" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page09 = [[TextPageOfBook alloc] initWithPath:@"CH16-9" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment8" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page10 = [[TextPageOfBook alloc] initWithPath:@"CH16-10" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment9" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page11 = [[TextPageOfBook alloc] initWithPath:@"CH16-11" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment10" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page12 = [[TextPageOfBook alloc] initWithPath:@"CH16-12" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment11" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page13 = [[TextPageOfBook alloc] initWithPath:@"CH16-13" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment12" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page14 = [[TextPageOfBook alloc] initWithPath:@"CH16-14" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment13" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page15 = [[TextPageOfBook alloc] initWithPath:@"CH16-15" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment14" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page16 = [[TextPageOfBook alloc] initWithPath:@"CH16-16" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment15" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page17 = [[TextPageOfBook alloc] initWithPath:@"CH16-17" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment16" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page18 = [[TextPageOfBook alloc] initWithPath:@"CH16-18" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page19 = [[TextPageOfBook alloc] initWithPath:@"CH16-19" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page20 = [[TextPageOfBook alloc] initWithPath:@"CH16-20" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page21 = [[TextPageOfBook alloc] initWithPath:@"CH16-21" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page22 = [[TextPageOfBook alloc] initWithPath:@"CH16-22" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page23 = [[TextPageOfBook alloc] initWithPath:@"CH16-23" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page24 = [[TextPageOfBook alloc] initWithPath:@"CH16-24" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page25 = [[TextPageOfBook alloc] initWithPath:@"CH16-25" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page26 = [[TextPageOfBook alloc] initWithPath:@"CH16-26" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page27 = [[TextPageOfBook alloc] initWithPath:@"CH16-27" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page28 = [[TextPageOfBook alloc] initWithPath:@"CH16-28" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page29 = [[TextPageOfBook alloc] initWithPath:@"CH16-29" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment8" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page30 = [[TextPageOfBook alloc] initWithPath:@"CH16-30" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment9" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page31 = [[TextPageOfBook alloc] initWithPath:@"CH16-31" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment10" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch16Page32 = [[TextPageOfBook alloc] initWithPath:@"CH16-32" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen1" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page33 = [[TextPageOfBook alloc] initWithPath:@"CH16-33" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen2" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page34 = [[TextPageOfBook alloc] initWithPath:@"CH16-34" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen3" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page35 = [[TextPageOfBook alloc] initWithPath:nil andTextPageImageFileType:nil andBackgroundimageFilePath:@"CH16_Frozen4" andBackgroundImageFileType:@"jpg" andFlourishName:@"CH16_IrrationalHypo_" andFlourishXAxis:0 andFlourishYAxis:0 andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page36 = [[TextPageOfBook alloc] initWithPath:@"CH16-36" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen5" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page37 = [[TextPageOfBook alloc] initWithPath:@"CH16-37" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen6" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page38 = [[TextPageOfBook alloc] initWithPath:@"CH16-38" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen1" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page39 = [[TextPageOfBook alloc] initWithPath:@"CH16-39" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen3" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page40 = [[TextPageOfBook alloc] initWithPath:@"CH16-40" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen4" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page41 = [[TextPageOfBook alloc] initWithPath:@"CH16-41" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen5" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page42 = [[TextPageOfBook alloc] initWithPath:@"CH16-42" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen1" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page43 = [[TextPageOfBook alloc] initWithPath:@"CH16-43" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen2" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page44 = [[TextPageOfBook alloc] initWithPath:@"CH16-44" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen3" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page45 = [[TextPageOfBook alloc] initWithPath:@"CH16-45" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen4" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page46 = [[TextPageOfBook alloc] initWithPath:@"CH16-46" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen5" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page47 = [[TextPageOfBook alloc] initWithPath:@"CH16-47" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen6" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page48 = [[TextPageOfBook alloc] initWithPath:@"CH16-48" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen7" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page49 = [[TextPageOfBook alloc] initWithPath:@"CH16-49" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen8" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page50 = [[TextPageOfBook alloc] initWithPath:@"CH16-50" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen9" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch16Page51 = [[TextPageOfBook alloc] initWithPath:@"CH16-51" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH16_Frozen10" andBackgroundImageFileType:@"jpg" andOverlay:kBJSnowOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH16_Ice Wind" andMultiPageAudioFileType:@"wav"];
    
    
    return [[NSArray alloc] initWithObjects:
            ch16Cover,
            ch16Page01,
            ch16Page02,
            ch16Page03,
            ch16Page04,
            ch16Page05,
            ch16Page06,
            ch16Page07,
            ch16Page08,
            ch16Page09,
            ch16Page10,
            ch16Page11,
            ch16Page12,
            ch16Page13,
            ch16Page14,
            ch16Page15,
            ch16Page16,
            ch16Page17,
            ch16Page18,
            ch16Page19,
            ch16Page20,
            ch16Page21,
            ch16Page22,
            ch16Page23,
            ch16Page24,
            ch16Page25,
            ch16Page26,
            ch16Page27,
            ch16Page28,
            ch16Page29,
            ch16Page30,
            ch16Page31,
            ch16Page32,
            ch16Page33,
            ch16Page34,
            ch16Page35,
            ch16Page36,
            ch16Page37,
            ch16Page38,
            ch16Page39,
            ch16Page40,
            ch16Page41,
            ch16Page42,
            ch16Page43,
            ch16Page44,
            ch16Page45,
            ch16Page46,
            ch16Page47,
            ch16Page48,
            ch16Page49,
            ch16Page50,
            ch16Page51,
            nil];
}
@end

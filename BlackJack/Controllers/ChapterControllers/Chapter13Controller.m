//
//  Chapter13Controller.m
//  BlackJack
//
//  Created by eric white on 4/10/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "Chapter13Controller.h"
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"

@implementation Chapter13Controller
+(NSArray *)getChapterArray
{
    MoviePageOfBook *ch13Cover = [[MoviePageOfBook alloc] initWithPath:@"CH13_Cover" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false  andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH13_Cover" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    MoviePageOfBook *ch13Page01 = [[MoviePageOfBook alloc] initWithPath:@"CH13_p1" andFileType:@"mov" andOneTimeAudioPath:@"CH13_Titian" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH13_p1" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch13Page02 = [[TextPageOfBook alloc] initWithPath:@"CH13-2" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH13_titian-extra" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page03 = [[TextPageOfBook alloc] initWithPath:@"CH13-3" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH13_titian1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page04 = [[TextPageOfBook alloc] initWithPath:@"CH13-4" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH13_titian5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page05 = [[TextPageOfBook alloc] initWithPath:@"CH13-5" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH13_titian2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page06 = [[TextPageOfBook alloc] initWithPath:@"CH13-6" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH13_titian3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page07 = [[TextPageOfBook alloc] initWithPath:@"CH13-7" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH13_titian4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page08 = [[TextPageOfBook alloc] initWithPath:@"CH13-8" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH13_titian1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page09 = [[TextPageOfBook alloc] initWithPath:@"CH13-9" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH13_titian1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page10 = [[TextPageOfBook alloc] initWithPath:@"CH13-10" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background13" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page11 = [[TextPageOfBook alloc] initWithPath:@"CH13-11" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment10" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page12 = [[TextPageOfBook alloc] initWithPath:@"CH13-12" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment11" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page13 = [[TextPageOfBook alloc] initWithPath:@"CH13-13" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment12" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page14 = [[TextPageOfBook alloc] initWithPath:@"CH13-14" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment13" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page15 = [[TextPageOfBook alloc] initWithPath:@"CH13-15" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment14" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page16 = [[TextPageOfBook alloc] initWithPath:@"CH13-16" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment15" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch13Page17 = [[MoviePageOfBook alloc] initWithPath:@"CH13_CrowsCage" andFileType:@"mov" andOneTimeAudioPath:@"13_Crows_Cage" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH13_CrowsCage" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch13Page18 = [[TextPageOfBook alloc] initWithPath:@"CH13-18" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page19 = [[TextPageOfBook alloc] initWithPath:@"CH13-19" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page20 = [[TextPageOfBook alloc] initWithPath:@"CH13-20" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page21 = [[TextPageOfBook alloc] initWithPath:@"CH13-21" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch13Page22 = [[MoviePageOfBook alloc] initWithPath:@"CH13_p22" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH13_p22" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch13Page23 = [[TextPageOfBook alloc] initWithPath:@"CH13-23" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH13_white1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page24 = [[TextPageOfBook alloc] initWithPath:@"CH13-24" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH13_white2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page25 = [[TextPageOfBook alloc] initWithPath:@"CH13-25" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH13_white3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page26 = [[TextPageOfBook alloc] initWithPath:@"CH13-26" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH13_white4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page27 = [[TextPageOfBook alloc] initWithPath:@"CH13-27" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page28 = [[TextPageOfBook alloc] initWithPath:@"CH13-28" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page29 = [[TextPageOfBook alloc] initWithPath:@"CH13-29" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment8" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page30 = [[TextPageOfBook alloc] initWithPath:@"CH13-30" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment9" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page31 = [[TextPageOfBook alloc] initWithPath:@"CH13-31" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment10" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page32 = [[TextPageOfBook alloc] initWithPath:@"CH13-32" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment11" andBackgroundImageFileType:@"jpg" andFlourishName:@"CH13_staffLayered_" andFlourishXAxis:50 andFlourishYAxis:185 andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page33 = [[TextPageOfBook alloc] initWithPath:@"CH13-33" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment12" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page34 = [[TextPageOfBook alloc] initWithPath:@"CH13-34" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment13" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch13Page35 = [[TextPageOfBook alloc] initWithPath:@"CH13-35" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment14" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];   
    
    
    return [[NSArray alloc] initWithObjects:
            ch13Cover,
            ch13Page01,
            ch13Page02,
            ch13Page03,
            ch13Page04,
            ch13Page05,
            ch13Page06,
            ch13Page07,
            ch13Page08,
            ch13Page09,
            ch13Page10,
            ch13Page11,
            ch13Page12,
            ch13Page13,
            ch13Page14,
            ch13Page15,
            ch13Page16,
            ch13Page17,
            ch13Page18,
            ch13Page19,
            ch13Page20,
            ch13Page21,
            ch13Page22,
            ch13Page23,
            ch13Page24,
            ch13Page25,
            ch13Page26,
            ch13Page27,
            ch13Page28,
            ch13Page29,
            ch13Page30,
            ch13Page31,
            ch13Page32,
            ch13Page33,
            ch13Page34,
            ch13Page35,
            nil];
}
@end

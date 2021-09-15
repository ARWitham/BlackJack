//
//  Chapter1Controller.m
//  BlackJack
//
//  Created by eric white on 4/7/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "Chapter1Controller.h"
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"

@implementation Chapter1Controller

+(NSArray *)getChapterArray
{
    MoviePageOfBook *ch01Cover = [[MoviePageOfBook alloc] initWithPath:@"CH01_Cover" andFileType:@"mov" andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andAutoPlay:true andRepeat:false  andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH01_Cover" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    MoviePageOfBook *ch01Page01 = [[MoviePageOfBook alloc] initWithPath:@"CH01_p1" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH01_p1" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch01Page02 = [[TextPageOfBook alloc] initWithPath:@"CH01-2" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background01" andBackgroundImageFileType:@"jpg" andOverlay:kBJCloundsOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch01Page03 = [[TextPageOfBook alloc] initWithPath:@"CH01-3" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background02" andBackgroundImageFileType:@"jpg" andOverlay:kBJCloundsOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch01Page04 = [[TextPageOfBook alloc] initWithPath:@"CH01-4" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background03" andBackgroundImageFileType:@"jpg" andOverlay:kBJCloundsOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch01Page05 = [[TextPageOfBook alloc] initWithPath:@"CH01-5" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background04" andBackgroundImageFileType:@"jpg" andOverlay:kBJCloundsOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch01Page06 = [[TextPageOfBook alloc] initWithPath:@"CH01-6" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background05" andBackgroundImageFileType:@"jpg" andOverlay:kBJCloundsOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch01Page07 = [[TextPageOfBook alloc] initWithPath:@"CH01-7" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background06" andBackgroundImageFileType:@"jpg" andOverlay:kBJCloundsOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch01Page08 = [[TextPageOfBook alloc] initWithPath:@"CH01-8" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background14" andBackgroundImageFileType:@"jpg" andFlourishName:@"Flourish" andFlourishXAxis:256 andFlourishYAxis:350 andOverlay:kBJCloundsOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch01Page09 = [[TextPageOfBook alloc] initWithPath:@"CH01-9" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background07" andBackgroundImageFileType:@"jpg" andOverlay:kBJCloundsOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch01Page10 = [[TextPageOfBook alloc] initWithPath:@"CH01-10" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background08" andBackgroundImageFileType:@"jpg" andOverlay:kBJCloundsOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch01Page11 = [[TextPageOfBook alloc] initWithPath:@"CH01-11" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background09" andBackgroundImageFileType:@"jpg" andOverlay:kBJCloundsOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch01Page12 = [[TextPageOfBook alloc] initWithPath:@"CH01-12" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background10" andBackgroundImageFileType:@"jpg" andOverlay:kBJCloundsOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch01Page13 = [[TextPageOfBook alloc] initWithPath:@"CH01-13" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background11" andBackgroundImageFileType:@"jpg" andOverlay:kBJCloundsOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch01Page14 = [[TextPageOfBook alloc] initWithPath:@"CH01-14" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background12" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page15 = [[TextPageOfBook alloc] initWithPath:@"CH01-15" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background13" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page16 = [[TextPageOfBook alloc] initWithPath:@"CH01-16" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background14" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page17 = [[TextPageOfBook alloc] initWithPath:@"CH01-17" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background15" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page18 = [[TextPageOfBook alloc] initWithPath:@"CH01-18" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background01" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page19 = [[TextPageOfBook alloc] initWithPath:@"CH01-19" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background02" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page20 = [[TextPageOfBook alloc] initWithPath:@"CH01-20" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background03" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page21 = [[TextPageOfBook alloc] initWithPath:@"CH01-21" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background04" andBackgroundImageFileType:@"jpg" andFlourishName:@"Flourish" andFlourishXAxis:256 andFlourishYAxis:350 andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch01Page22 = [[MoviePageOfBook alloc] initWithPath:@"CH01_Cave-In" andFileType:@"mov"  andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH01_P23" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:TRUE];
    MoviePageOfBook *ch01Page23 = [[MoviePageOfBook alloc] initWithPath:@"CH01_p23" andFileType:@"mov"  andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH01_p23" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch01Page24 = [[TextPageOfBook alloc] initWithPath:@"CH01-24" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background06" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page25 = [[TextPageOfBook alloc] initWithPath:@"CH01-25" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background07" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page26 = [[TextPageOfBook alloc] initWithPath:@"CH01-26" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background08" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page27 = [[TextPageOfBook alloc] initWithPath:@"CH01-27" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background09" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page28 = [[TextPageOfBook alloc] initWithPath:@"CH01-28" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background10" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page29 = [[TextPageOfBook alloc] initWithPath:@"CH01-29" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background11" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page30 = [[TextPageOfBook alloc] initWithPath:@"CH01-30" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background12" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page31 = [[TextPageOfBook alloc] initWithPath:@"CH01-31" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background13" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page32 = [[TextPageOfBook alloc] initWithPath:@"CH01-32" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background14" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page33 = [[TextPageOfBook alloc] initWithPath:@"CH01-33" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background15" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page34 = [[TextPageOfBook alloc] initWithPath:@"CH01-34" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background01" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page35 = [[TextPageOfBook alloc] initWithPath:@"CH01-35" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background14" andBackgroundImageFileType:@"jpg" andFlourishName:@"Flourish" andFlourishXAxis:256 andFlourishYAxis:425 andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page36 = [[TextPageOfBook alloc] initWithPath:@"CH01-36" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background02" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page37 = [[TextPageOfBook alloc] initWithPath:@"CH01-37" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background03" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page38 = [[TextPageOfBook alloc] initWithPath:@"CH01-38" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background04" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page39 = [[TextPageOfBook alloc] initWithPath:@"CH01-39" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background05" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page40 = [[TextPageOfBook alloc] initWithPath:@"CH01-40" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background06" andBackgroundImageFileType:@"jpg" andFlourishName:@"CH01_Isotope_Animation" andFlourishXAxis:130 andFlourishYAxis:134 andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page41 = [[TextPageOfBook alloc] initWithPath:@"CH01-41" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background07" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch01Page42 = [[TextPageOfBook alloc] initWithPath:@"CH01-42" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background08" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch01Page43 = [[MoviePageOfBook alloc] initWithPath:@"CH01_MonsterInWindow" andFileType:@"mov" andOneTimeAudioPath:@"CH01_Monster_Window" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:@"CH01_Monster" andForegroundImageFileType:@"jpg" andBackgroundimageFilePath:@"CH01_windowBlur" andBackgroundImageFileType:@"jpg" andFadeBackground:TRUE andAutoPageTurn:FALSE];

    
    return [[NSArray alloc] initWithObjects:
            ch01Cover,
            ch01Page01,
            ch01Page02,
            ch01Page03,
            ch01Page04,
            ch01Page05,
            ch01Page06,
            ch01Page07,
            ch01Page08,
            ch01Page09,
            ch01Page10,
            ch01Page11,
            ch01Page12,
            ch01Page13,
            ch01Page14,
            ch01Page15,
            ch01Page16,
            ch01Page17,
            ch01Page18,
            ch01Page19,
            ch01Page20,
            ch01Page21,
            ch01Page22,
            ch01Page23,
            ch01Page24,
            ch01Page25,
            ch01Page26,
            ch01Page27,
            ch01Page28,
            ch01Page29,
            ch01Page30,
            ch01Page31,
            ch01Page32,
            ch01Page33,
            ch01Page34,
            ch01Page35,
            ch01Page36,
            ch01Page37,
            ch01Page38,
            ch01Page39,
            ch01Page40,
            ch01Page41,
            ch01Page42,
            ch01Page43,
            nil];
}

@end

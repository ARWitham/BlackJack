//
//  Chapter3Controller.m
//  BlackJack
//
//  Created by eric white on 4/7/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "Chapter3Controller.h"
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"

@implementation Chapter3Controller

+(NSArray *)getChapterArray
{
    
    MoviePageOfBook *ch03Cover = [[MoviePageOfBook alloc] initWithPath:@"CH03_Cover" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false  andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH03_Cover" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    MoviePageOfBook *ch03Page01 = [[MoviePageOfBook alloc] initWithPath:@"CH03_p1" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH03_p1" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch03Page02 = [[TextPageOfBook alloc] initWithPath:@"CH03-2" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch03Page03 = [[TextPageOfBook alloc] initWithPath:@"CH03-3" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch03Page04 = [[TextPageOfBook alloc] initWithPath:@"CH03-4" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch03Page05 = [[TextPageOfBook alloc] initWithPath:@"CH03-5" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch03Page06 = [[TextPageOfBook alloc] initWithPath:@"CH03-6" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andFlourishName:@"Flourish" andFlourishXAxis:256 andFlourishYAxis:690 andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch03Page07 = [[TextPageOfBook alloc] initWithPath:@"CH03-7" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch03Page08 = [[TextPageOfBook alloc] initWithPath:@"CH03-8" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment8" andBackgroundImageFileType:@"jpg" andOverlay:kBJPixieOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch03Page09 = [[TextPageOfBook alloc] initWithPath:@"CH03-9" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment9" andBackgroundImageFileType:@"jpg" andOverlay:kBJPixieOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch03Page10 = [[TextPageOfBook alloc] initWithPath:@"CH03-10" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment10" andBackgroundImageFileType:@"jpg" andOverlay:kBJPixieOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch03Page11 = [[TextPageOfBook alloc] initWithPath:@"CH03-11" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment11" andBackgroundImageFileType:@"jpg" andFlourishName:@"Flourish" andFlourishXAxis:256 andFlourishYAxis:325 andOverlay:kBJPixieOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch03Page12 = [[TextPageOfBook alloc] initWithPath:@"CH03-12" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment12" andBackgroundImageFileType:@"jpg" andOverlay:kBJPixieOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    MoviePageOfBook *ch03Page13 = [[MoviePageOfBook alloc] initWithPath:@"CH03_p13" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH03_p13" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch03Page14 = [[TextPageOfBook alloc] initWithPath:@"CH03-14" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"antique2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch03Page15 = [[TextPageOfBook alloc] initWithPath:@"CH03-15" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"antique3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch03Page16 = [[TextPageOfBook alloc] initWithPath:@"CH03-16" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"antique4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch03Page17 = [[TextPageOfBook alloc] initWithPath:@"CH03-17" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"antique5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch03Page18 = [[TextPageOfBook alloc] initWithPath:@"CH03-18" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment13" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch03Page19 = [[TextPageOfBook alloc] initWithPath:@"CH03-19" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment14" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch03Page20 = [[TextPageOfBook alloc] initWithPath:@"CH03-20" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment15" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch03Page21 = [[TextPageOfBook alloc] initWithPath:@"CH03-21" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment16" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch03Page22 = [[TextPageOfBook alloc] initWithPath:@"CH03-22" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment17" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    TextPageOfBook *ch03Page23 = [[TextPageOfBook alloc] initWithPath:@"CH03-23" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment18" andBackgroundImageFileType:@"jpg" andFlourishName:@"Flourish" andFlourishXAxis:256 andFlourishYAxis:750 andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"CH03_Ocean" andMultiPageAudioFileType:@"wav"];
    MoviePageOfBook *ch03Page24 = [[MoviePageOfBook alloc] initWithPath:@"CH03_MoonlightOverCamp" andFileType:@"mov" andOneTimeAudioPath:@"CH03_Moonlight Over Camp" andOneTimeAudioFileType:@"mp3" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:nil andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch03Page25 = [[TextPageOfBook alloc] initWithPath:@"CH03-25" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment20" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch03Page26 = [[TextPageOfBook alloc] initWithPath:@"CH03-26" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch03Page27 = [[TextPageOfBook alloc] initWithPath:@"CH03-27" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch03Page28 = [[TextPageOfBook alloc] initWithPath:@"CH03-28" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch03Page29 = [[TextPageOfBook alloc] initWithPath:@"CH03-29" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch03Page30 = [[TextPageOfBook alloc] initWithPath:@"CH03-30" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andFlourishName:@"Flourish" andFlourishXAxis:256 andFlourishYAxis:400 andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch03Page31 = [[TextPageOfBook alloc] initWithPath:@"CH03-31" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    
    return [[NSArray alloc] initWithObjects:
            ch03Cover,
            ch03Page01,
            ch03Page02,
            ch03Page03,
            ch03Page04,
            ch03Page05,
            ch03Page06,
            ch03Page07,
            ch03Page08,
            ch03Page09,
            ch03Page10,
            ch03Page11,
            ch03Page12,
            ch03Page13,
            ch03Page14,
            ch03Page15,
            ch03Page16,
            ch03Page17,
            ch03Page18,
            ch03Page19,
            ch03Page20,
            ch03Page21,
            ch03Page22,
            ch03Page23,
            ch03Page24,
            ch03Page25,
            ch03Page26,
            ch03Page27,
            ch03Page28,
            ch03Page29,
            ch03Page30,
            ch03Page31,
            nil];

}

@end

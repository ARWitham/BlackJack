//
//  Chapter19Controller.m
//  BlackJack
//
//  Created by eric white on 4/10/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "Chapter19Controller.h"
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"

@implementation Chapter19Controller
+(NSArray *)getChapterArray
{
    MoviePageOfBook *ch19Cover = [[[MoviePageOfBook alloc] initWithPath:@"CH19_Cover" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false  andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH19_Cover" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE] autorelease];
    MoviePageOfBook *ch19Page01 = [[[MoviePageOfBook alloc] initWithPath:@"CH19_p1" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH19_p1" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE] autorelease];
    TextPageOfBook *ch19Page02 = [[[TextPageOfBook alloc] initWithPath:@"CH19-2" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness1" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page03 = [[[TextPageOfBook alloc] initWithPath:@"CH19-3" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness2" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page04 = [[[TextPageOfBook alloc] initWithPath:@"CH19-4" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness3" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page05 = [[[TextPageOfBook alloc] initWithPath:@"CH19-5" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness4" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page06 = [[[TextPageOfBook alloc] initWithPath:@"CH19-6" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness5" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page07 = [[[TextPageOfBook alloc] initWithPath:@"CH19-7" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness6" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page08 = [[[TextPageOfBook alloc] initWithPath:@"CH19-8" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness7" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    MoviePageOfBook *ch19Page09 = [[[MoviePageOfBook alloc] initWithPath:@"CH19_DemonAndPrince" andFileType:@"mov" andOneTimeAudioPath:@"CH19_DemonAndPrince" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH19_DemonAndPrince" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE] autorelease];
    TextPageOfBook *ch19Page10 = [[[TextPageOfBook alloc] initWithPath:@"CH19-10" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness9" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page11 = [[[TextPageOfBook alloc] initWithPath:@"CH19-11" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness10" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page12 = [[[TextPageOfBook alloc] initWithPath:@"CH19-12" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness11" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page13 = [[[TextPageOfBook alloc] initWithPath:@"CH19-13" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness12" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page14 = [[[TextPageOfBook alloc] initWithPath:@"CH19-14" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness13" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page15 = [[[TextPageOfBook alloc] initWithPath:@"CH19-15" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness14" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page16 = [[[TextPageOfBook alloc] initWithPath:@"CH19-16" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness15" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page17 = [[[TextPageOfBook alloc] initWithPath:@"CH19-17" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background10" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page18 = [[[TextPageOfBook alloc] initWithPath:@"CH19-18" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background01" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page19 = [[[TextPageOfBook alloc] initWithPath:@"CH19-19" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background02" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page20 = [[[TextPageOfBook alloc] initWithPath:@"CH19-20" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background03" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page21 = [[[TextPageOfBook alloc] initWithPath:@"CH19-21" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness5" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page22 = [[[TextPageOfBook alloc] initWithPath:@"CH19-22" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness1" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page23 = [[[TextPageOfBook alloc] initWithPath:@"CH19-23" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness2" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page24 = [[[TextPageOfBook alloc] initWithPath:@"CH19-24" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness3" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page25 = [[[TextPageOfBook alloc] initWithPath:@"CH19-25" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness4" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page26 = [[[TextPageOfBook alloc] initWithPath:@"CH19-26" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness5" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page27 = [[[TextPageOfBook alloc] initWithPath:@"CH19-27" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness6" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page28 = [[[TextPageOfBook alloc] initWithPath:@"CH19-28" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness7" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page29 = [[[TextPageOfBook alloc] initWithPath:@"CH19-29" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness8" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page30 = [[[TextPageOfBook alloc] initWithPath:@"CH19-30" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness9" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page31 = [[[TextPageOfBook alloc] initWithPath:@"CH19-31" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness10" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page32 = [[[TextPageOfBook alloc] initWithPath:@"CH19-32" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness11" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page33 = [[[TextPageOfBook alloc] initWithPath:@"CH19-33" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness12" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page34 = [[[TextPageOfBook alloc] initWithPath:@"CH19-34" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness13" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page35 = [[[TextPageOfBook alloc] initWithPath:@"CH19-35" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness14" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page36 = [[[TextPageOfBook alloc] initWithPath:@"CH19-36" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness15" andBackgroundImageFileType:@"jpg" andFlourishName:@"CH19_EquationLayered_" andFlourishXAxis:50 andFlourishYAxis:240 andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page37 = [[[TextPageOfBook alloc] initWithPath:@"CH19-37" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness10" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    TextPageOfBook *ch19Page38 = [[[TextPageOfBook alloc] initWithPath:@"CH19-38" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"madness1" andBackgroundImageFileType:@"jpg" andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];    
    
    
    return [[NSArray alloc] initWithObjects:
            ch19Cover,
            ch19Page01,
            ch19Page02,
            ch19Page03,
            ch19Page04,
            ch19Page05,
            ch19Page06,
            ch19Page07,
            ch19Page08,
            ch19Page09,
            ch19Page10,
            ch19Page11,
            ch19Page12,
            ch19Page13,
            ch19Page14,
            ch19Page15,
            ch19Page16,
            ch19Page17,
            ch19Page18,
            ch19Page19,
            ch19Page20,
            ch19Page21,
            ch19Page22,
            ch19Page23,
            ch19Page24,
            ch19Page25,
            ch19Page26,
            ch19Page27,
            ch19Page28,
            ch19Page29,
            ch19Page30,
            ch19Page31,
            ch19Page32,
            ch19Page33,
            ch19Page34,
            ch19Page35,
            ch19Page36,
            ch19Page37,
            ch19Page38,
            nil];
}
@end

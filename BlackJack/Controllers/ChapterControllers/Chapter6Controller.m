//
//  Chapter6Controller.m
//  BlackJack
//
//  Created by eric white on 4/10/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "Chapter6Controller.h"
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"

@implementation Chapter6Controller
+(NSArray *)getChapterArray
{
    MoviePageOfBook *ch06Cover = [[MoviePageOfBook alloc] initWithPath:@"CH06_Cover" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false  andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH06_Cover" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    MoviePageOfBook *ch06Page01 = [[MoviePageOfBook alloc] initWithPath:@"CH06_p1" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH06_p1" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch06Page02 = [[TextPageOfBook alloc] initWithPath:@"CH06-2" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page03 = [[TextPageOfBook alloc] initWithPath:@"CH06-3" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page04 = [[TextPageOfBook alloc] initWithPath:@"CH06-4" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page05 = [[TextPageOfBook alloc] initWithPath:@"CH06-5" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page06 = [[TextPageOfBook alloc] initWithPath:@"CH06-6" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page07 = [[TextPageOfBook alloc] initWithPath:@"CH06-7" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page08 = [[TextPageOfBook alloc] initWithPath:@"CH06-8" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page09 = [[TextPageOfBook alloc] initWithPath:@"CH06-9" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment8" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page10 = [[TextPageOfBook alloc] initWithPath:@"CH06-10" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment9" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page11 = [[TextPageOfBook alloc] initWithPath:@"CH06-11" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment10" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page12 = [[TextPageOfBook alloc] initWithPath:@"CH06-12" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment11" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:@"CH06_Standalone SFX - War Horn" andOneTimeAudioFileType:@"wav" andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page13 = [[TextPageOfBook alloc] initWithPath:@"CH06-13" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment12" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page14 = [[TextPageOfBook alloc] initWithPath:@"CH06-14" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment13" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page15 = [[TextPageOfBook alloc] initWithPath:@"CH06-15" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment14" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page16 = [[TextPageOfBook alloc] initWithPath:@"CH06-16" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment15" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch06Page17 = [[MoviePageOfBook alloc] initWithPath:@"CH06_Swarm" andFileType:@"mov" andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH06_Swarm" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch06Page18 = [[TextPageOfBook alloc] initWithPath:@"CH06-18" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page19 = [[TextPageOfBook alloc] initWithPath:@"CH06-19" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page20 = [[TextPageOfBook alloc] initWithPath:@"CH06-20" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page21 = [[TextPageOfBook alloc] initWithPath:@"CH06-21" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page22 = [[TextPageOfBook alloc] initWithPath:@"CH06-22" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page23 = [[TextPageOfBook alloc] initWithPath:@"CH06-23" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page24 = [[TextPageOfBook alloc] initWithPath:@"CH06-24" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page25 = [[TextPageOfBook alloc] initWithPath:@"CH06-25" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page26 = [[TextPageOfBook alloc] initWithPath:@"CH06-26" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page27 = [[TextPageOfBook alloc] initWithPath:@"CH06-27" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:@"CH06_Standalone SFX - Thunder Ocean Rain" andOneTimeAudioFileType:@"wav" andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch06Page28 = [[TextPageOfBook alloc] initWithPath:@"CH06-28" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    
    
    
    return [[NSArray alloc] initWithObjects:
            ch06Cover,
            ch06Page01,
            ch06Page02,
            ch06Page03,
            ch06Page04,
            ch06Page05,
            ch06Page06,
            ch06Page07,
            ch06Page08,
            ch06Page09,
            ch06Page10,
            ch06Page11,
            ch06Page12,
            ch06Page13,
            ch06Page14,
            ch06Page15,
            ch06Page16,
            ch06Page17,
            ch06Page18,
            ch06Page19,
            ch06Page20,
            ch06Page21,
            ch06Page22,
            ch06Page23,
            ch06Page24,
            ch06Page25,
            ch06Page26,
            ch06Page27,
            ch06Page28,
            nil];
}
@end

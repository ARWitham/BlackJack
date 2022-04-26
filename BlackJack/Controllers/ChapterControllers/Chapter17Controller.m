//
//  Chapter17Controller.m
//  BlackJack
//
//  Created by eric white on 4/10/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "Chapter17Controller.h"
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"

@implementation Chapter17Controller
+(NSArray *)getChapterArray
{
    MoviePageOfBook *ch17Cover = [[MoviePageOfBook alloc] initWithPath:@"CH17_Cover" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false  andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH17_Cover" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    MoviePageOfBook *ch17Page01 = [[MoviePageOfBook alloc] initWithPath:@"CH17_p1" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH17_p1" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch17Page02 = [[TextPageOfBook alloc] initWithPath:@"CH17-2" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH17_Indigo1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch17Page03 = [[TextPageOfBook alloc] initWithPath:@"CH17-3" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH17_Indigo2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch17Page04 = [[TextPageOfBook alloc] initWithPath:@"CH17-4" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"CH17_Indigo3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch17Page05 = [[MoviePageOfBook alloc] initWithPath:@"CH17_p5" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH17_p5" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch17Page06 = [[TextPageOfBook alloc] initWithPath:@"CH17-6" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page07 = [[TextPageOfBook alloc] initWithPath:@"CH17-7" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page08 = [[TextPageOfBook alloc] initWithPath:@"CH17-8" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page09 = [[TextPageOfBook alloc] initWithPath:@"CH17-9" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment8" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page10 = [[TextPageOfBook alloc] initWithPath:@"CH17-10" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment9" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page11 = [[TextPageOfBook alloc] initWithPath:@"CH17-11" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment10" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page12 = [[TextPageOfBook alloc] initWithPath:@"CH17-12" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment11" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page13 = [[TextPageOfBook alloc] initWithPath:@"CH17-13" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment12" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page14 = [[TextPageOfBook alloc] initWithPath:@"CH17-14" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment13" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page15 = [[TextPageOfBook alloc] initWithPath:@"CH17-15" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment14" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page16 = [[TextPageOfBook alloc] initWithPath:@"CH17-16" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment15" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page17 = [[TextPageOfBook alloc] initWithPath:@"CH17-17" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment16" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page18 = [[TextPageOfBook alloc] initWithPath:@"CH17-18" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page19 = [[TextPageOfBook alloc] initWithPath:@"CH17-19" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    MoviePageOfBook *ch17Page20 = [[MoviePageOfBook alloc] initWithPath:@"CH17_PaladineArch" andFileType:@"mov" andOneTimeAudioPath:@"CH17_PaladineArch" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH17_PaladineArch" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch17Page21 = [[TextPageOfBook alloc] initWithPath:@"CH17-21" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page22 = [[TextPageOfBook alloc] initWithPath:@"CH17-22" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page23 = [[TextPageOfBook alloc] initWithPath:@"CH17-23" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page24 = [[TextPageOfBook alloc] initWithPath:@"CH17-24" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page25 = [[TextPageOfBook alloc] initWithPath:@"CH17-25" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJPixieOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page26 = [[TextPageOfBook alloc] initWithPath:@"CH17-26" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJPixieOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page27 = [[TextPageOfBook alloc] initWithPath:@"CH17-27" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:kBJPixieOverlay andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page28 = [[TextPageOfBook alloc] initWithPath:@"CH17-28" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page29 = [[TextPageOfBook alloc] initWithPath:@"CH17-29" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment8" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page30 = [[TextPageOfBook alloc] initWithPath:@"CH17-30" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment9" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page31 = [[TextPageOfBook alloc] initWithPath:@"CH17-31" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment10" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page32 = [[TextPageOfBook alloc] initWithPath:@"CH17-32" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment11" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page33 = [[TextPageOfBook alloc] initWithPath:@"CH17-33" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment12" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page34 = [[TextPageOfBook alloc] initWithPath:@"CH17-34" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment13" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page35 = [[TextPageOfBook alloc] initWithPath:@"CH17-35" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment14" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page36 = [[TextPageOfBook alloc] initWithPath:@"CH17-36" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment15" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page37 = [[TextPageOfBook alloc] initWithPath:@"CH17-37" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment16" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page38 = [[TextPageOfBook alloc] initWithPath:@"CH17-38" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page39 = [[TextPageOfBook alloc] initWithPath:@"CH17-39" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page40 = [[TextPageOfBook alloc] initWithPath:@"CH17-40" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page41 = [[TextPageOfBook alloc] initWithPath:@"CH17-41" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page42 = [[TextPageOfBook alloc] initWithPath:@"CH17-42" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];
    TextPageOfBook *ch17Page43 = [[TextPageOfBook alloc] initWithPath:@"CH17-43" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:@"Soft Warm Wind Loop_01" andMultiPageAudioFileType:@"mp3"];    
    
    
    return [[NSArray alloc] initWithObjects:
            ch17Cover,
            ch17Page01,
            ch17Page02,
            ch17Page03,
            ch17Page04,
            ch17Page05,
            ch17Page06,
            ch17Page07,
            ch17Page08,
            ch17Page09,
            ch17Page10,
            ch17Page11,
            ch17Page12,
            ch17Page13,
            ch17Page14,
            ch17Page15,
            ch17Page16,
            ch17Page17,
            ch17Page18,
            ch17Page19,
            ch17Page20,
            ch17Page21,
            ch17Page22,
            ch17Page23,
            ch17Page24,
            ch17Page25,
            ch17Page26,
            ch17Page27,
            ch17Page28,
            ch17Page29,
            ch17Page30,
            ch17Page31,
            ch17Page32,
            ch17Page33,
            ch17Page34,
            ch17Page35,
            ch17Page36,
            ch17Page37,
            ch17Page38,
            ch17Page39,
            ch17Page40,
            ch17Page41,
            ch17Page42,
            ch17Page43,
            nil];
}
@end

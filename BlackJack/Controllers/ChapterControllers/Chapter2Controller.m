//
//  Chapter2Controller.m
//  BlackJack
//
//  Created by eric white on 4/7/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "Chapter2Controller.h"
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"

@implementation Chapter2Controller

+(NSArray *)getChapterArray
{
    MoviePageOfBook *ch02Cover = [[MoviePageOfBook alloc] initWithPath:@"CH02_Cover" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false  andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH02_Cover" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    MoviePageOfBook *ch02Page01 = [[MoviePageOfBook alloc] initWithPath:@"CH02_p1" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH02_p1" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch02Page02 = [[TextPageOfBook alloc] initWithPath:@"CH02-2" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background02" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch02Page03 = [[TextPageOfBook alloc] initWithPath:@"CH02-3" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background03" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch02Page04 = [[TextPageOfBook alloc] initWithPath:@"CH02-4" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background04" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch02Page05 = [[TextPageOfBook alloc] initWithPath:@"CH02-5" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background05" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch02Page06 = [[TextPageOfBook alloc] initWithPath:@"CH02-6" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background06" andBackgroundImageFileType:@"jpg"  andFlourishName:@"Flourish" andFlourishXAxis:256 andFlourishYAxis:475 andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch02Page07 = [[MoviePageOfBook alloc] initWithPath:@"CH02_Rhino" andFileType:@"mov"  andOneTimeAudioPath:@"CH02_Under the Streetlight" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH01_P23" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch02Page08 = [[TextPageOfBook alloc] initWithPath:@"CH02-8" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background07" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch02Page09 = [[TextPageOfBook alloc] initWithPath:@"CH02-9" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background08" andBackgroundImageFileType:@"jpg" andFlourishName:@"Flourish" andFlourishXAxis:256 andFlourishYAxis:515 andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch02Page10 = [[TextPageOfBook alloc] initWithPath:@"CH02-10" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background09" andBackgroundImageFileType:@"jpg" andOverlay:kBJCopLightOverlay andOneTimeAudioPath:@"CH02_Siren" andOneTimeAudioFileType:@"wav" andOneTimeAudioDelay:5 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch02Page11 = [[TextPageOfBook alloc] initWithPath:@"CH02-11" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background10" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch02Page12 = [[TextPageOfBook alloc] initWithPath:@"CH02-12" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background11" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch02Page13 = [[TextPageOfBook alloc] initWithPath:@"CH02-13" andTextPageImageFileType:@"jpg" andBackgroundimageFilePath:nil andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch02Page14 = [[TextPageOfBook alloc] initWithPath:@"CH02-14" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background13" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];

    return [[NSArray alloc] initWithObjects:
                 ch02Cover,
                 ch02Page01,
                 ch02Page02,
                 ch02Page03,
                 ch02Page04,
                 ch02Page05,
                 ch02Page06,
                 ch02Page07,
                 ch02Page08,
                 ch02Page09,
                 ch02Page10,
                 ch02Page11,
                 ch02Page12,
                 ch02Page13,
                 ch02Page14,
                 nil];
}

@end

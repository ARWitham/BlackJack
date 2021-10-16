//
//  Chapter20Controller.m
//  BlackJack
//
//  Created by eric white on 4/10/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "Chapter20Controller.h"
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"

@implementation Chapter20Controller
+(NSArray *)getChapterArray
{
    MoviePageOfBook *ch20Cover = [[MoviePageOfBook alloc] initWithPath:@"CH20_Cover" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false  andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH20_Cover" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    MoviePageOfBook *ch20Page01 = [[MoviePageOfBook alloc] initWithPath:@"CH20_p1" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH20_p1" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch20Page02 = [[TextPageOfBook alloc] initWithPath:@"CH20-2" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment1" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch20Page03 = [[TextPageOfBook alloc] initWithPath:@"CH20-3" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment2" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch20Page04 = [[TextPageOfBook alloc] initWithPath:@"CH20-4" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment3" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch20Page05 = [[TextPageOfBook alloc] initWithPath:@"CH20-5" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment4" andBackgroundImageFileType:@"jpg" andFlourishName:@"StaffOverlay_" andFlourishXAxis:288 andFlourishYAxis:450 andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch20Page06 = [[TextPageOfBook alloc] initWithPath:@"CH20-6" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment5" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch20Page07 = [[TextPageOfBook alloc] initWithPath:@"CH20-7" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment6" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch20Page08 = [[TextPageOfBook alloc] initWithPath:@"CH20-8" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment7" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch20Page09 = [[TextPageOfBook alloc] initWithPath:@"CH20-9" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"parchment8" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch20Page10 = [[MoviePageOfBook alloc] initWithPath:@"CH20_p10" andFileType:@"mov" andOneTimeAudioPath:@"Page Roll-On" andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH20_p10" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    TextPageOfBook *ch20Page11 = [[TextPageOfBook alloc] initWithPath:@"CH20-11" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background01" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    TextPageOfBook *ch20Page12 = [[TextPageOfBook alloc] initWithPath:@"CH20-12" andTextPageImageFileType:@"png" andBackgroundimageFilePath:@"background02" andBackgroundImageFileType:@"jpg" andOverlay:kBJNone andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil];
    MoviePageOfBook *ch20Page13 = [[MoviePageOfBook alloc] initWithPath:@"CH20_FathersAndSons" andFileType:@"mov" andOneTimeAudioPath:nil andOneTimeAudioFileType:@"wav" andAutoPlay:true andRepeat:false andForegroundimageFilePath:nil andForegroundImageFileType:nil andBackgroundimageFilePath:@"CH20_FathersAndSons" andBackgroundImageFileType:@"jpg" andFadeBackground:FALSE andAutoPageTurn:FALSE];
    
    
    return [[NSArray alloc] initWithObjects:
            ch20Cover,
            ch20Page01,
            ch20Page02,
            ch20Page03,
            ch20Page04,
            ch20Page05,
            ch20Page06,
            ch20Page07,
            ch20Page08,
            ch20Page09,
            ch20Page10,
            ch20Page11,
            ch20Page12,
            ch20Page13,
            nil];
}
@end

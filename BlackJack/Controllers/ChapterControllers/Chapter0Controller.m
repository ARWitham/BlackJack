//
//  Chapter0Controller.m
//  BlackJack
//
//  Created by eric white on 4/7/13.
//  Copyright (c) 2013 SonarStudios. All rights reserved.
//

#import "Chapter0Controller.h"
#import "MoviePageOfBook.h"
#import "TextPageOfBook.h"

@implementation Chapter0Controller

+(NSArray *)getChapterArray
{
    TextPageOfBook *titlePage = [[[TextPageOfBook alloc] initWithPath:@"title page" andTextPageImageFileType:@"jpg" andBackgroundimageFilePath:nil andBackgroundImageFileType:nil andOverlay:nil andOneTimeAudioPath:nil andOneTimeAudioFileType:nil andOneTimeAudioDelay:0 andMultiPageAudioPath:nil andMultiPageAudioFileType:nil] autorelease];
    return [[NSArray alloc] initWithObjects:
            titlePage,
            nil];
}
@end

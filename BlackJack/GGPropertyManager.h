//
//  PropertyManager.h
//  RemedyVideo
//
//  Created by Eric M. White on 5/15/11.
//  Copyright 2011 Guilford Group. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GGPropertyManager : NSObject

+(BOOL) isFirstLaunch;
+(void) incrementCurrentPageNumber;
+(void) udpateProperty:(NSString*) propertyName withString:(NSString *) value;
+(int) getCurrentPageNumber;
+(void) setCurrentPageNumber:(int)inputCurrentPageNumber;
+(void) incrementCurrentChapterNumber;
+(int) getCurrentChapterNumber;
+(void) setCurrentChapterNumber:(int)inputCurrentChapterNumber;
@end

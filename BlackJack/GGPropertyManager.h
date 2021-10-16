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
+(NSInteger) getCurrentPageNumber;
+(void) setCurrentPageNumber:(NSUInteger)inputCurrentPageNumber;
+(void) incrementCurrentChapterNumber;
+(NSInteger) getCurrentChapterNumber;
+(void) setCurrentChapterNumber:(NSUInteger)inputCurrentChapterNumber;
@end

//
//  PropertyManager.m
//  RemedyVideo
//
//  Created by Eric M. White on 5/15/11.
//  Copyright 2011 Guilford Group. All rights reserved.
//

#import "GGPropertyManager.h"
#import <sys/socket.h>

static BOOL isInitialized = FALSE;
static NSMutableDictionary *configDictionary;
static NSString *bundlePath;

@implementation GGPropertyManager

+(void) initialize
{
    if (!isInitialized)
    {
        bundlePath = [[NSBundle mainBundle] bundlePath];
        configDictionary = [NSMutableDictionary dictionaryWithContentsOfFile:[NSString stringWithFormat:@"%@/Config.plist", bundlePath]];
        isInitialized = TRUE;
    }
}


+(void) udpateProperty:(NSString*) propertyName withString:(NSString *) value
{
    [configDictionary setObject:value forKey:propertyName];
    [configDictionary writeToFile:[NSString stringWithFormat:@"%@/Config.plist", bundlePath] atomically:NO];
}


+(void) incrementCurrentPageNumber
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int retrievedValue = [defaults integerForKey:@"currentPageNumber"];
    
    // Increment the sequence number
    retrievedValue = retrievedValue+1;
    [defaults setInteger:retrievedValue forKey:@"currentPageNumber"];
    [defaults synchronize];
}

+(int) getCurrentPageNumber
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int retrievedValue = [defaults integerForKey:@"currentPageNumber"];
    
    return retrievedValue;
}
+(void) setCurrentPageNumber:(int)inputCurrentPageNumber
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:inputCurrentPageNumber forKey:@"currentPageNumber"];
    [defaults synchronize];
}

+(void) incrementCurrentChapterNumber
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int retrievedValue = [defaults integerForKey:@"currentChapterNumber"];
    
    // Increment the sequence number
    retrievedValue = retrievedValue+1;
    [defaults setInteger:retrievedValue forKey:@"currentChapterNumber"];
    [defaults synchronize];
}

+(int) getCurrentChapterNumber
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int retrievedValue = [defaults integerForKey:@"currentChapterNumber"];
    
    return retrievedValue;
}
+(void) setCurrentChapterNumber:(int)inputCurrentChapterNumber
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:inputCurrentChapterNumber forKey:@"currentChapterNumber"];
    [defaults synchronize];
}

+(BOOL) isFirstLaunch
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *retrievedValue = nil;
    retrievedValue = [defaults stringForKey:@"FirstLaunch"];

    BOOL isFirstLaunch=TRUE;
    if ([retrievedValue isEqualToString:@"No"])
    {
        isFirstLaunch=FALSE;
    }
    
    // Increment the sequence number
    if (isFirstLaunch)
    {
        [defaults setValue:@"No" forKey:@"FirstLaunch"];
        [defaults synchronize];
    }
    
    return isFirstLaunch;
}


@end

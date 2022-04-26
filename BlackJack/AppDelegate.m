//
//  AppDelegate.m
//  BlackJack
//
//  Created by eric white on 12/28/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import "AppDelegate.h"
#import "BlackJackViewController.h"

@implementation AppDelegate
@synthesize multiPageAudioPlayer;

- (void)playMultiPageAudioFromURL:(NSURL *)audioURL
{
    if (!isMultiPageAudioPlaying)
    {
        multiPageAudioPlayer = [[AVAudioPlayer alloc]
                            initWithContentsOfURL:audioURL
                            error:nil];
        [multiPageAudioPlayer setNumberOfLoops:-1];
        [multiPageAudioPlayer play];
        isMultiPageAudioPlaying = TRUE;
    }
}

-(void)playMultiPageAudioFromPath:(NSString *)inputAudioPath andType:(NSString *)inputAudioFileType
{
    NSString *auidoPath = [[NSBundle mainBundle] pathForResource:inputAudioPath ofType:inputAudioFileType];
    NSURL *audioURL = [NSURL fileURLWithPath:auidoPath];
    [self playMultiPageAudioFromURL:audioURL];
}

-(void)fadeMultiPageAudio
{
    if (isMultiPageAudioPlaying)
    {
        [self doMultiPageAudioFade];
        isMultiPageAudioPlaying=FALSE;
    }
}

-(void)doMultiPageAudioFade
{
    if (multiPageAudioPlayer.volume > 0.1) {
        multiPageAudioPlayer.volume = multiPageAudioPlayer.volume - 0.1;
        [self performSelector:@selector(doMultiPageAudioFade) withObject:nil afterDelay:.3];
    } else {
        // when the fade is complete, stop the player
        [multiPageAudioPlayer stop];
    }
}


/*
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[BlackJackViewController alloc] initWithNibName:@"BlackJackViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}
*/
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

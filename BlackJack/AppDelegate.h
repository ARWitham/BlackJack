//
//  AppDelegate.h
//  BlackJack
//
//  Created by eric white on 12/28/12.
//  Copyright (c) 2012 SonarStudios. All rights reserved.
//

#import <UIKit/UIKit.h>
@import AVFoundation;

@interface AppDelegate : NSObject <UIApplicationDelegate, AVAudioPlayerDelegate>
{
    BOOL isMultiPageAudioPlaying;
}

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) UIViewController *viewController;
@property (nonatomic, strong) AVAudioPlayer *multiPageAudioPlayer;

-(void)playMultiPageAudioFromURL:(NSURL *)audioURL;
-(void)playMultiPageAudioFromPath:(NSString *)audioPath andType:(NSString *)audioFileType;
-(void)fadeMultiPageAudio;


@end

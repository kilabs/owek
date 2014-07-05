//
//  netraAppDelegate.h
//  Suara Hewan
//
//  Created by Arie Prasetyo on 7/5/14.
//  Copyright (c) 2014 vanbungkring. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "netraMainViewController.h"
#import <AVFoundation/AVFoundation.h>
#include <AudioToolbox/AudioToolbox.h>
@interface netraAppDelegate : UIResponder <UIApplicationDelegate>
{
    netraMainViewController *netraMain;
     AVAudioPlayer *myAudioPlayer;
}
@property (strong, nonatomic) UIWindow *window;
-(void)play:(NSString *)file;

@end

//
//  WAppDelegate.h
//  Waddles
//
//  Created by Sumedha Pramod on 1/23/14.
//  Copyright (c) 2014 Sumedha Pramod. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface WAppDelegate : UIResponder <UIApplicationDelegate> {
    CMMotionManager *motionManager;
}

@property (strong, nonatomic) UIWindow *window;
@property (retain,nonatomic) CMMotionManager *motionManager;

@end

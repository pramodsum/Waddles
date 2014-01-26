//
//  WPenguinController.h
//  Waddles
//
//  Created by Sumedha Pramod on 1/23/14.
//  Copyright (c) 2014 Sumedha Pramod. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

double currentMaxAccelY;
CGPoint vel;
CGPoint pos;

@interface WPenguinController : NSManagedObject

    @property (strong, nonatomic) CMMotionManager *motionManager;

@end

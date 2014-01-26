//
//  WPenguinController.m
//  Waddles
//
//  Created by Sumedha Pramod on 1/23/14.
//  Copyright (c) 2014 Sumedha Pramod. All rights reserved.
//

#import "WPenguinController.h"


@implementation WPenguinController

-(void) accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration {
    float deceleration = 0.1f, sensitivity = 8.0f, maxVelocity = 150;

    // adjust velocity based on current accelerometer acceleration
    vel.x = vel.x * deceleration + acceleration.x * sensitivity;

    //limit the maximum velocity of the player sprite, in both directions (positive & negative values)
    vel.x = fmaxf(fminf(vel.x, maxVelocity), -maxVelocity);
}

-(void) update:(ccTime)delta
{
    CGSize screenSize = [[CIDetector sharedDirector] winSize];
    float imageWidthHalved = [boat texture].contentSize.width * 0.25f;
    float leftBorderLimit = imageWidthHalved + 45;
    float rightBorderLimit = screenSize.width - imageWidthHalved - 45;

    pos = penguin.position;
    pos.x += vel.x;

    if (pos.x < leftBorderLimit)
    {
        pos.x = leftBorderLimit;
        vel = CGPointZero;
    }
    else if (pos.x > rightBorderLimit)
    {
        pos.x = rightBorderLimit;
        vel = CGPointZero;
    }

    spriteName.position = pos;
}

@end

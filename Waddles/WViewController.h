//
//  WViewController.h
//  Waddles
//
//  Created by Sumedha Pramod on 1/23/14.
//  Copyright (c) 2014 Sumedha Pramod. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>

@interface WViewController : GLKViewController <UIAccelerometerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *penguin;
@property (strong, nonatomic) IBOutlet UILabel *pts;

@end

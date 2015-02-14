//
//  ViewController.h
//  MDStrengthMeter
//
//  Created by Meghdoot on 2/13/15.
//  Copyright (c) 2015 openxcell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MDStrengthView.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet MDStrengthView *strength1;
@property (weak, nonatomic) IBOutlet MDStrengthView *strength2;
@property (weak, nonatomic) IBOutlet MDStrengthView *strength3;
@property (weak, nonatomic) IBOutlet MDStrengthView *strength4;

@end


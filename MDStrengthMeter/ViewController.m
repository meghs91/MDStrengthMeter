//
//  ViewController.m
//  MDStrengthMeter
//
//  Created by Meghdoot on 2/13/15.
//  Copyright (c) 2015 openxcell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _strength1.meterLabel = @[@"Cool",@"dark",@"Cloudy",@"Clear",@"Hot"];
    _strength2.meterLabel = @[@"Bad",@"Not Good",@"Fine",@"Excellent",@"Superb"];
    _strength3.meterLabel = @[@"Lowest",@"Low",@"Medium",@"High",@"Very High"];
    _strength4.meterLabel = @[@"Bad",@"Not Good",@"Fine",@"Excellent",@"Superb"];
    _strength1.strength = 5;
    _strength2.strength = 1;
    _strength3.strength = 2;
    _strength4.strength = 4;
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnTest:(id)sender {
    _strength4.strength =3;
}

@end

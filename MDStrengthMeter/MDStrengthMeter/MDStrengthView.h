//
//  StrengthView.h
//  MDStrengthMeter
//
//  Created by Meghdoot on 2/13/15.
//  Copyright (c) 2015 openxcell. All rights reserved.
//

#import <UIKit/UIKit.h>
// Color
#define LOWEST [UIColor colorWithRed:0.349 green:0.545 blue:0.894 alpha:1]
#define LOW [UIColor colorWithRed:0.518 green:0.710 blue:0.227 alpha:1]
#define MEDIUM [UIColor colorWithRed:0.929 green:0.733 blue:0.000 alpha:1]
#define HIGH [UIColor colorWithRed:0.882 green:0.475 blue:0.000 alpha:1]
#define HIGHEST [UIColor colorWithRed:0.784 green:0.267 blue:0.263 alpha:1]
#define GRAY [UIColor colorWithWhite:0.878 alpha:1]

@interface MDStrengthView : UIView {
    __weak IBOutlet UILabel *lblLowest;
    __weak IBOutlet UILabel *lblLow;
    __weak IBOutlet UILabel *lblMedium;
    __weak IBOutlet UILabel *lblHigh;
    __weak IBOutlet UILabel *lblHigest;
    __weak IBOutlet UILabel *lblStatusMsg;
}
@property(nonatomic, assign) int        strength;
@property(nonatomic, strong) NSArray    *meterLabel;
@end

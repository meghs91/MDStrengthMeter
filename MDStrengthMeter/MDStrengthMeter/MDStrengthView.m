//
//  StrengthView.m
//  MDStrengthMeter
//
//  Created by Meghdoot on 2/13/15.
//  Copyright (c) 2015 openxcell. All rights reserved.
//

#import "MDStrengthView.h"

@implementation MDStrengthView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit
{
    UIView *view = nil;
    NSArray *objects = [[NSBundle mainBundle] loadNibNamed:@"MDStrengthMeter"
                                                     owner:self
                                                   options:nil];
    for (id object in objects) {
        if ([object isKindOfClass:[UIView class]]) {
            view = object;
            break;
        }
    }
    
    if (view != nil) {
        view.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:view];
        [self setNeedsUpdateConstraints];
    }
    lblLow.backgroundColor  = GRAY;
    lblLowest.backgroundColor = GRAY;
    lblMedium.backgroundColor =GRAY;
    lblHigh.backgroundColor = GRAY;
    lblHigest.backgroundColor = GRAY;
    lblStatusMsg.text =@"";
    if (_meterLabel.count<=0 || _meterLabel.count<5) {
        _meterLabel = @[@"Lowest",@"Low",@"Medium",@"High",@"Highest"];
    }
}

-(void)setStrength:(int)strength{
    lblLow.backgroundColor  = GRAY;
    lblLowest.backgroundColor = GRAY;
    lblMedium.backgroundColor =GRAY;
    lblHigh.backgroundColor = GRAY;
    lblHigest.backgroundColor = GRAY;
    
    switch (strength) {
            
        case 0:
            lblLowest.backgroundColor = LOWEST;
            lblStatusMsg.text = _meterLabel[0];
            break;
            
        case 1:
            lblLow.backgroundColor  = LOW;
            lblLowest.backgroundColor = LOWEST;
            lblStatusMsg.text = _meterLabel[1];
            break;
            
        case 2:
            lblLow.backgroundColor  = LOW;
            lblLowest.backgroundColor = LOWEST;
            lblMedium.backgroundColor = MEDIUM;
            lblStatusMsg.text = _meterLabel[2];
            break;
        case 3:
            lblLow.backgroundColor  = LOW;
            lblLowest.backgroundColor = LOWEST;
            lblMedium.backgroundColor = MEDIUM;
            lblHigh.backgroundColor = HIGH;
            lblStatusMsg.text = _meterLabel[3];
            break;
        case 4:
            lblLow.backgroundColor  = LOW;
            lblLowest.backgroundColor = LOWEST;
            lblMedium.backgroundColor = MEDIUM;
            lblHigh.backgroundColor = HIGH;
            lblHigest.backgroundColor = HIGHEST;
            lblStatusMsg.text = _meterLabel[4];
            break;
            
        default:
            break;
    }
}
-(void)setMeterLabel:(NSArray *)meterLabel{
    _meterLabel = [meterLabel copy];
}
@end

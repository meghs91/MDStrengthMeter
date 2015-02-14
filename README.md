# MDStrengthMeter
1) #import "MDStrengthView.h"

2) create MDStrengthView Object
MDStrengthView *strengthMeter = [[MDStrengthView alloc] initWithFrame:CGRectMake(10, 10, 300, 33)];
strengthMeter.strength = 3; // 0 to 5 Strength
strengthMeter.meterLabel = @[@"Lowest",@"Low",@"Medium",@"High",@"Very High"];

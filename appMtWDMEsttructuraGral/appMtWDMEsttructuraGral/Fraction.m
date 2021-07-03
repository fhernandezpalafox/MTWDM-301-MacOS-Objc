//
//  Fraction.m
//  appMtWDMEsttructuraGral
//
//  Created by Felipe Hernandez on 30/01/21.
//

#import "Fraction.h"

@implementation Fraction

-(void) print{
    NSLog(@" %i/%i",numerator,denominator);
}
-(void) setNumerator:(int) a{
    numerator = a;
}
-(void) setDenominator:(int) b{
    denominator = b;
}
@end

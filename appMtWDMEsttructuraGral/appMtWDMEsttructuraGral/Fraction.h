//
//  Fraction.h
//  appMtWDMEsttructuraGral
//
//  Created by Felipe Hernandez on 30/01/21.
//

#import <Foundation/Foundation.h>



@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}


-(void) print;
-(void) setNumerator:(int) a;
-(void) setDenominator:(int) b;



@end


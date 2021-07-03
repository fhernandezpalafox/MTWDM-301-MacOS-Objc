//
//  FractionProperty.m
//  appMtWDMEsttructuraGral
//
//  Created by Felipe Hernandez on 30/01/21.
//

#import "FractionProperty.h"

@implementation FractionProperty

@synthesize numerator,denominator;

-(void) print{
    
    NSLog(@" %i/%i",numerator,denominator);
}

- (void)setTo:(int)a over:(int)b{
    numerator = a;
    denominator = b;
}

@end

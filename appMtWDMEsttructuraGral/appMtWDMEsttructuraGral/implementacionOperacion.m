//
//  implementacionOperacion.m
//  appMtWDMEsttructuraGral
//
//  Created by Felipe Hernandez on 06/02/21.
//

#import "implementacionOperacion.h"

@implementation implementacionOperacion

- (void)imprimir{
    NSLog(@"Uso de los protocolos");
}
- (void)resta:(int)param1 andSegundo:(int)param2 {
    NSLog(@"El resultado de la resta es: %i",(param1 - param2));
}

- (void)suma:(int)param1 andSegundo:(int)param2 {
    NSLog(@"El resultado de la suma es: %i",(param1 + param2));
}

@end

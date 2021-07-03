//
//  FractionProperty.h
//  appMtWDMEsttructuraGral
//
//  Created by Felipe Hernandez on 30/01/21.
//

#import <Foundation/Foundation.h>


@interface FractionProperty : NSObject

//Declaracion de las propiedades
@property int numerator, denominator;
//Declaracion  de los métodos
-(void) print;
-(void) setTo:(int)a over:(int)b;

@end


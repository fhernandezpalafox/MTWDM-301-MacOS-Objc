//
//  Calculadora.h
//  appMtWDMEsttructuraGral
//
//  Created by Felipe Hernandez on 06/02/21.
//

#import <Foundation/Foundation.h>


@interface Calculadora : NSObject
{
    double acumulador;
}

//Métodos del acululador
-(void) setAcumulador:(double)valor;
-(void) limpiar;
-(double) getAcumulador;

//Métodos aritmeticos
-(void) suma:(double)valor;
-(void) resta:(double)valor;
-(void) multiplicacion:(double)valor;
-(void) division:(double)valor;


@end


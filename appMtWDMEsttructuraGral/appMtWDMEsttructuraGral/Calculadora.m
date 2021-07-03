//
//  Calculadora.m
//  appMtWDMEsttructuraGral
//
//  Created by Felipe Hernandez on 06/02/21.
//

#import "Calculadora.h"

@implementation Calculadora


//Métodos del acululador
-(void) setAcumulador:(double)valor{
    acumulador = valor;
}

-(void) limpiar{
    acumulador = 0;
}

-(double) getAcumulador{
    return acumulador;
}

//Métodos aritmeticos
-(void) suma:(double)valor{
    acumulador += valor;
}

-(void) resta:(double)valor{
    acumulador -= valor;
}

-(void) multiplicacion:(double)valor{
    acumulador *= valor;
}

- (void)division:(double)valor{
    acumulador /= valor;
}

@end

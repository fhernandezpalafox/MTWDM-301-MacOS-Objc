//
//  Gerente.m
//  appMtWDMEsttructuraGral
//
//  Created by Felipe Hernandez on 30/01/21.
//

#import "Gerente.h"

@implementation Gerente

//Clase (Persona)
- (void)EstoyCasado{
    NSLog(@"No lo estoy (Gerente)");
}

- (void)EstoyCasado:(BOOL)estatus{
    NSLog(@"Yo clase (Gerente) %@",(estatus == YES)?@"Si estoy casado":@"No estoy casado");
}

//Clase (Gerente)
-(void)mostrarSalario{
    NSLog(@"Este es el salario del gerente");
}
@end

//
//  Persona.m
//  appMtWDMEsttructuraGral
//
//  Created by Felipe Hernandez on 30/01/21.
//

#import "Persona.h"

@implementation Persona

- (id)initWithName:(NSString *)name andAge:(NSInteger *)age{
    nombrePersona  = name;
    edadPersona  = age;
    return  self;
}

- (void)print{
    NSLog(@"Nombre: %@",nombrePersona);
    NSLog(@"Edad: %i",(int)edadPersona);
}



//Polimorfirmo
- (void)EstoyCasado {
    NSLog(@"No lo estoy (Persona)");
}

-(void)EstoyCasado:(BOOL) estatus {
    NSLog(@" Yo clase (Persona) %@",(estatus == YES)?@"Si estoy casado":@"No estoy casado");
}





@end

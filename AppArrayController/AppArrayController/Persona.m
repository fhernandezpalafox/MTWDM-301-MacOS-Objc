//
//  Persona.m
//  AppArrayController
//
//  Created by Felipe Hernandez on 06/03/21.
//

#import "Persona.h"

@implementation Persona

@synthesize Nombre = Nombre;
@synthesize Domicilio = Domicilio;


- (id) init
{
    self = [super init];
    if (self) {
        Nombre = @"Felipe Hernandez";
        Domicilio = @"Betania 1634, Col San Felipe de jesus";
    }
    return self;
}


@end

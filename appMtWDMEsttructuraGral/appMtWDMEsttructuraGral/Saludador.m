//
//  Saludador.m
//  appMtWDMEsttructuraGral
//
//  Created by Felipe Hernandez on 30/01/21.
//

#import <Foundation/Foundation.h>
#import <stdio.h>
#import <stdlib.h>
#import <string.h>
#import "Saludador.h"

@implementation Saludador

-init{
    if(self = [super init]){
        saludo = "hola mundo";
        NSLog(@"Entro al costructor init");
    }
    return self;
}

- (id)initWithSaludo:(NSString *)unSaludo{
    self = [super init];
    if(self){
        NSLog(@"Este es un saludo desde el constructor %@",unSaludo);
    }
    return self;
 }


- (void)setSaludo:(char *)unSaludo{
    saludo = unSaludo;
}

- (void)setSaludo:(char *)unSaludo andComplemento:(char *)complemento{
    
    saludo  = malloc(strlen(unSaludo)+ strlen(complemento) + 1);
    strcpy(saludo, unSaludo);
    strcat(saludo, complemento);
}


- (void)saludar{
    printf("%s",saludo);
}


@end

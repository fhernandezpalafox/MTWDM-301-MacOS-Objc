//
//  NSString+PruebaCategoria.m
//  appMtWDMEsttructuraGral
//
//  Created by Felipe Hernandez on 06/02/21.
//

#import "NSString+PruebaCategoria.h"

@implementation NSString (PruebaCategoria)


/// Funcion para contar la letra a
- (int)contarLetraA{
    int cont = 0;
    
    for (int i = 0; i < [self length]; i++) {
        if([self characterAtIndex:i] == 'a'){
            cont++;
        }
    }
    return cont;
}

- (NSString *)capitalizedString{
    NSRange rango = NSMakeRange(0, 1);
       NSString *nuevoTexto = [self stringByReplacingCharactersInRange:rango withString:@"A"];
       return nuevoTexto;
}

@end

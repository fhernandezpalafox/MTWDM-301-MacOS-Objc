//
//  main.m
//  appMtWDMEsttructuraGral
//
//  Created by Felipe Hernandez on 30/01/21.
//

#import <Foundation/Foundation.h>
#import "Operaciones.h"
#import "Persona.h"
#import "Fraction.h"
#import "FractionProperty.h"
#import "Gerente.h"
#import "Saludador.h"
#import "Calculadora.h"
#import "implementacionOperacion.h"

#import "Bloques.h"

#import "NSString+PruebaCategoria.h"



int main(int argc, const char * argv[]) {
   
    @autoreleasepool {
        /*Operaciones *objOperaciones = [[Operaciones alloc] init];
        
        int dia = 2;
        
        switch (dia) {
            case 1: [objOperaciones imprimirDia:@"Lunes" andNumero: dia ]; break;
            case  2: [objOperaciones imprimirDia:@"Martes" andNumero: dia ]; break;
            default: break;
        }*/
        
       /* Persona *objPersona = [[Persona alloc] initWithName:@"Felipe" andAge:31];
        [objPersona print];
        
        [objPersona EstoyCasado:YES];
        [objPersona EstoyCasado];
        
        */
        
        /*
        Fraction *objFraction = [[Fraction alloc] init];
        [objFraction setNumerator:3];
        [objFraction setDenominator:5];
        [objFraction print];
        */
       
        /*FractionProperty *objFraction = [[FractionProperty alloc] init];
        [objFraction setNumerator:4];
        [objFraction setDenominator:6];
        
        int num = [objFraction numerator] + 2;
        
        NSLog(@"La suma del numerator + 2 = %i",num);
        
        //[objFraction setTo:4 over:6];
        
        [objFraction print];
         */
        
        /*Gerente *objGerente = [[Gerente alloc] initWithName:@"Felipe" andAge: 31];
        
        [objGerente print];
        
        [objGerente mostrarSalario];
        */
        
       
        
//         Saludador *objSaludador = [[Saludador alloc] init];
//         Saludador *objSaludador2 = [[Saludador alloc] initWithSaludo:@"Hola desde el constructor"];
        
//        Calculadora *objCalculadora;
//
//
//        //objCalculadora = [[Calculadora alloc] init];
//        objCalculadora  =  [Calculadora new];
//
//        [objCalculadora limpiar];
//        [objCalculadora setAcumulador:100.0];
//        [objCalculadora suma:23.0];
//        [objCalculadora division:5.0];
//        [objCalculadora resta:34.0];
//        [objCalculadora multiplicacion:45.0];
//        double valor = [objCalculadora getAcumulador];
//        //NSLog(@"El resultado es: %g",[objCalculadora getAcumulador]);
//        NSLog(@"El resultado es: %g",valor);
        
//        implementacionOperacion *objimpleopera = [[implementacionOperacion alloc] init];
//        [objimpleopera imprimir];
//        [objimpleopera suma:3 andSegundo:6];
//        [objimpleopera resta:6 andSegundo:8];
//

        
//        Bloques *bloque = [[Bloques alloc] init];
//        [bloque variasOperaciones:2 andSegundo:3 andTipo:1];
//        [bloque variasOperaciones:2 andSegundo:3 andTipo:2];
//
//        //Bloque 1
//        [bloque bloqueDentroFuncion];
//
//        //Bloque 2
//        [bloque division];
//
//        //Bloque 3
//        [bloque imprimirNombre];
        
        
        NSString *nombre = @"Armando";
        NSLog(@"La palabra %@: tiene: %d 'a' ",[nombre capitalizedString], [nombre contarLetraA]);
        
        
        
    }
    return 0;
}

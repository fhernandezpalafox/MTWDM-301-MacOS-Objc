//
//  OperacionesBasicas.h
//  appMtWDMEsttructuraGral
//
//  Created by Felipe Hernandez on 06/02/21.
//

#import <Foundation/Foundation.h>

@protocol OperacionesBasicas <NSObject>

//Métodos declarados equi seran requeridos para su implementacion
@required
//Lista de métodos requeridos
-(void) suma:(int)param1 andSegundo:(int) param2;
-(void) resta:(int)param1 andSegundo:(int) param2;


//Métodos declarados equi seran opcionales para su implementacion
@optional
//Lista de métodos opcionales
-(void) multiplicacion:(int)param1 andSegundo:(int) param2;
-(void) division:(int)param1 andSegundo:(int) param2;

@end

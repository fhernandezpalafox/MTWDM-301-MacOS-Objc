//
//  Persona.h
//  appMtWDMEsttructuraGral
//
//  Created by Felipe Hernandez on 30/01/21.
//

#import <Foundation/Foundation.h>


@interface Persona : NSObject
{
    NSString *nombrePersona;
    NSInteger *edadPersona;
}

-(id) initWithName:(NSString *)name andAge:(NSInteger *)age;
-(void)print;


//Polimorfismo
-(void) EstoyCasado;
-(void) EstoyCasado:(BOOL) estatus;



@end



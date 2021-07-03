//
//  Saludador.h
//  appMtWDMEsttructuraGral
//
//  Created by Felipe Hernandez on 30/01/21.
//

#import <Foundation/Foundation.h>
#import <stdio.h>

@interface Saludador : NSObject
{
    char *saludo;
}

-init;
-(id) initWithSaludo:(NSString *)unSaludo;
-(void) setSaludo:(char *)unSaludo;
-(void) setSaludo:(char *)unSaludo andComplemento:(char *)complemento;
-(void) saludar;




@end


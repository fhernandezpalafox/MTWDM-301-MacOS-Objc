//
//  ViewController.m
//  AppOperacionesNSAlertTryCatch
//
//  Created by Felipe Hernandez on 13/02/21.
//

#import "ViewController.h"
#import "Operaciones.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)onAceptar:(id)sender {
    
    Operaciones *objOperaciones = [[Operaciones alloc] init];
    
    int num1, num2, resultado;
    
    NSString *Emoji = @"Error ❌";
    
    NSAlert *alerta  = [[NSAlert alloc] init];
    [alerta addButtonWithTitle:@"Ok"];
    [alerta addButtonWithTitle:@"Cancel"];
    [alerta setMessageText:[NSString stringWithFormat:@"Un emoji %@",Emoji]];
    [alerta setInformativeText:@"Hubo un error"];
    [alerta setAlertStyle:NSAlertStyleCritical];
    [alerta runModal];
    
    
    @try {
        num1  =  _txtNum1.intValue;
        num2 =  _txtNum2.intValue;
        
        resultado = [objOperaciones sumar:num1 andDos:num2];
        
        [_lblResultado setStringValue:[NSString stringWithFormat:@"El resultado es %i",resultado]];
        
    } @catch (NSException *exception) {
        NSLog(@"Hubo un error %@",exception.reason);
        
    }
    
    
}
@end

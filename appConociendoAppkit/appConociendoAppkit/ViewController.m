//
//  ViewController.m
//  appConociendoAppkit
//
//  Created by Felipe Hernandez on 13/02/21.
//

#import "ViewController.h"
#import "LogicaNegocio.h"


@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_lblRespuesta setStringValue:@"He cargado desde el viewDidLoad"];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)onOperacion:(id)sender {
    LogicaNegocio *objLogicaNeg = [LogicaNegocio new];
    [_lblRespuesta setStringValue:[objLogicaNeg mandarResultadoMsg]];
}

- (IBAction)onAceptar:(id)sender {
    
    NSString *nombre = [[NSString alloc] init ];
    nombre = @"Hola soy: ";
    nombre = [nombre stringByAppendingString:_txtNombre.stringValue];
    [_lblRespuesta setStringValue:nombre];
    
}
@end

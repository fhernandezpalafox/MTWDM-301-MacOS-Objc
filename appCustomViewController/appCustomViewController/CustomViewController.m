//
//  CustomViewController.m
//  appCustomViewController
//
//  Created by Felipe Hernandez on 20/02/21.
//

#import "CustomViewController.h"

@interface CustomViewController ()

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   //Modificando algunas propiedades de nuestros elementos View
    [_titulo setStringValue:@"Este es mi titulo"];
    [_descripcion setStringValue:@"Esto es una descripción"];
    
    
    //Custom label
    [_titulo setFont:[NSFont fontWithName:@"Herculam" size:15]];
    [_titulo setTextColor:[NSColor redColor]];
    [_titulo setBackgroundColor:[NSColor blueColor]];
    [_titulo setDrawsBackground:YES];
    [_titulo setSelectable:YES];
    
    //Cargar imagen
    NSImage *image = [NSImage imageNamed:@"informacion.png"];
    [_imagen setImage:image];
    
    
    //Se realiza una instancia
    dialog = [[CustomViewController alloc] init];
    
    [self setTitle:@"Dialogo"];
    
    
}


-(IBAction)eventoCancelar:(id)sender{
    //this =  self
    [dialog dismissViewController:self];
    
}
-(IBAction)eventoAceptar:(id)sender{
    [dialog dismissViewController:self];
}

@end

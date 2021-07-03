//
//  ViewController.h
//  AppBindings
//
//  Created by Felipe Hernandez on 20/02/21.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property int numero;
@property NSColor *color;
-(IBAction)Seleccionar:(id)sender;
@property (weak) IBOutlet NSTextField *txtSeleccionado;
@property BOOL Habilitar;


@end


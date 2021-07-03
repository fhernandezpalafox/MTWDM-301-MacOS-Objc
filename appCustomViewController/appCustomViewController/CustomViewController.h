//
//  CustomViewController.h
//  appCustomViewController
//
//  Created by Felipe Hernandez on 20/02/21.
//

#import <Cocoa/Cocoa.h>

@interface CustomViewController : NSViewController
{
    CustomViewController *dialog;
}

@property (weak) IBOutlet NSImageView *imagen;
@property (weak) IBOutlet NSTextField *titulo;
@property (weak) IBOutlet NSTextField *descripcion;

-(IBAction)eventoCancelar:(id)sender;
-(IBAction)eventoAceptar:(id)sender;


@end


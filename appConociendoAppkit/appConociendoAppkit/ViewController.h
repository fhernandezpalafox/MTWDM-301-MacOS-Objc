//
//  ViewController.h
//  appConociendoAppkit
//
//  Created by Felipe Hernandez on 13/02/21.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (strong) IBOutlet NSTextField *txtNombre;
@property (strong) IBOutlet NSTextField *lblRespuesta;
- (IBAction)onAceptar:(id)sender;
- (IBAction)onOperacion:(id)sender;


@end


//
//  ViewController.h
//  AppNSDatePicker
//
//  Created by Felipe Hernandez on 20/02/21.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (strong) IBOutlet NSTextField *txtDescripcion;
@property (strong) IBOutlet NSDatePicker *nsFecha;
@property (strong) IBOutlet NSTextField *lblDescripcionLarga;

- (IBAction)mostrarInformacion:(id)sender;

@end


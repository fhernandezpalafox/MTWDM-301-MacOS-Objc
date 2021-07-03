//
//  ViewController.h
//  appNSTableView
//
//  Created by Felipe Hernandez on 27/02/21.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSTableViewDataSource>
{
    NSMutableArray *lista;
}
@property (strong) IBOutlet NSTextField *txtNombre;
@property (strong) IBOutlet NSTextField *txtDomicilio;
@property (strong) IBOutlet NSButton *chkEstaCasado;
@property (strong) IBOutlet NSTableView *tabla;

- (IBAction)Agregar:(id)sender;

- (IBAction)Eliminar:(id)sender;



@end


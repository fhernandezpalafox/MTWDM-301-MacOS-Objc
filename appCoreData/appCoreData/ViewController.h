//
//  ViewController.h
//  appCoreData
//
//  Created by Felipe Hernandez on 20/03/21.
//

#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"
#import "Persona+CoreDataClass.h"
#import <CoreData/CoreData.h>




@interface ViewController : NSViewController<NSTableViewDelegate, NSTableViewDataSource,NSFetchedResultsControllerDelegate>

@property (strong) IBOutlet NSTextField *txtNombre;
@property (strong) IBOutlet NSTextField *txtEdad;
@property (strong) IBOutlet NSComboBox *cmbEstadoCivil;
@property (strong) IBOutlet NSTextField *txtDomicilio;
@property (strong) IBOutlet NSTableView *Tabla;

- (IBAction)onEliminar:(id)sender;
- (IBAction)onActualizar:(id)sender;
- (IBAction)onGuardar:(id)sender;

-(void) cargarDatos;
-(void) MessageBox:(NSString *)Title andMessage:(NSString *)Message;


@end


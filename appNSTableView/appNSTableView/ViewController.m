//
//  ViewController.m
//  appNSTableView
//
//  Created by Felipe Hernandez on 27/02/21.
//

#import "ViewController.h"
#import "Persona.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    lista  = [[NSMutableArray alloc] init];
    
    Persona *objPersona = [[Persona alloc] init]; //new
    [objPersona setNombre:@"Felipe"];
    [objPersona setDomicilio:@"Judea #102, Col. San Felipe de jesus"];
    [objPersona setEstaCasado:1];
    
    [lista addObject:objPersona];
    
    //Para recargar la tabla
    [_tabla reloadData];
    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)Eliminar:(id)sender {
    
    @try {
        NSInteger row = [_tabla selectedRow];
        [lista removeObjectAtIndex:row];
        [_tabla reloadData];
    } @catch (NSException *exception) {
        NSLog(@"Error %@",exception.reason);
    } @finally {
        //optional
    }
    
}

- (IBAction)Agregar:(id)sender {
    
    Persona *objPersona = [[Persona alloc] init]; //new
    [objPersona setNombre:[_txtNombre stringValue]];
    [objPersona setDomicilio:[_txtDomicilio stringValue]];
    [objPersona setEstaCasado: (int)[_chkEstaCasado state]];
    
    [lista addObject:objPersona];
    
    //Para recargar la tabla
    [_tabla reloadData];
    
    [_txtNombre setStringValue:@""];
    [_txtDomicilio setStringValue:@""];
    [_chkEstaCasado setState:0];
    
}


//Métodos para trabajar la TableView
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return [lista count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    
    Persona *objp = [lista objectAtIndex:row];
    NSString *identifier = [tableColumn identifier];
    NSString *columna = [objp valueForKey:identifier];
    return  columna;
    
}

@end

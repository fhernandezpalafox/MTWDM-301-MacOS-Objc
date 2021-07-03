//
//  ViewController.m
//  appCoreData
//
//  Created by Felipe Hernandez on 20/03/21.
//

#import "ViewController.h"


@implementation ViewController
{
    Persona *persona;
    NSManagedObjectContext *contex; //almacena el contexto de CoreData
    NSFetchedResultsController *fetchedresultcontroller;
    NSArray *personas;
}

/*
 - (NSManagedObjectModel *)managedObjectModel. NSManagedObjectModel es la clase que contiene la definición de cada uno de los objetos o entidades que almacenamos en la base de datos. Normalmente este método no lo utilizaremos ya que nosotros vamos a utilizar el editor que hemos visto antes, con el que podremos crear nuevas entidades, crear sus atributos y relaciones.
 
 - (NSPersistentStoreCoordinator *)persistentStoreCoordinator. Aquí es donde configuramos los nombres y las ubicaciones de las bases de datos que se usarán para almacenar los objetos. Cuando un "managed object" necesite guardar algo pasará por este método.
 
 - (NSManagedObjectContext *)managedObjectContext. Esta clase NSManagedObjectContext será la más usada con diferencia de las tres, y por tanto, la más importante. La utilizaremos básicamente para obtener objetos, insertarlos o borrarlos.
 
 */


- (void)viewDidLoad {
    [super viewDidLoad];
    
    contex = ((AppDelegate *) [[NSApplication sharedApplication] delegate]).persistentContainer.viewContext;
    
    [self cargarDatos];
    
}

//NSTableViewDataSource
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return [personas count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    
    Persona *p = [personas objectAtIndex:row];
    NSString *val = (NSString *) [p valueForKey:tableColumn.identifier];
    return val;
}

//NSTableViewDataSource



//NSTableViewDelegate

- (void)tableViewSelectionDidChange:(NSNotification *)notification{
    
    if([_Tabla selectedRow] != -1){
        
        NSTableView *tableview = notification.object;
        
        Persona *personaselect = [personas objectAtIndex:[tableview selectedRow]];
        
        persona = personaselect;
        
        [_txtNombre setStringValue:persona.nombre];
        [_txtEdad setStringValue:[NSString stringWithFormat:@"%d",persona.edad]];
        [_txtDomicilio setStringValue:persona.domicilio];
        [_cmbEstadoCivil setStringValue:persona.estadoCivil];
        
    }
}

//NSTableViewDelegate




- (IBAction)onGuardar:(id)sender {
    
    NSManagedObject *entityPersona = [NSEntityDescription insertNewObjectForEntityForName:@"Persona" inManagedObjectContext: contex];
    
    [entityPersona setValue:[_txtNombre stringValue] forKey:@"nombre"];
    [entityPersona setValue:[_txtDomicilio stringValue] forKey:@"domicilio"];
    [entityPersona setValue:[NSNumber numberWithInteger:[[_txtEdad stringValue] integerValue]] forKey:@"edad"];
    [entityPersona setValue:[_cmbEstadoCivil stringValue] forKey:@"estadoCivil"];
    
    NSError *error = nil;
    if(![contex save:&error]){
        NSLog(@"Sucedio un error %@",[error localizedDescription]);
    }else{
        
        [self MessageBox:@"Guardar información" andMessage:@"Se guardo correctamente"];
        
        [_txtEdad setStringValue:@""];
        [_txtDomicilio setStringValue:@""];
        [_txtNombre setStringValue:@""];
        [_cmbEstadoCivil setStringValue:@""];
        
        [self cargarDatos];
        [_Tabla reloadData];
        
        
    }
    
    
}

- (IBAction)onActualizar:(id)sender {
    
    persona.nombre  = _txtNombre.stringValue;
    persona.edad = [_txtEdad intValue];
    persona.domicilio = _txtDomicilio.stringValue;
    persona.estadoCivil = _cmbEstadoCivil.stringValue;
    
    
    NSError *error = nil;
    
    if(![contex save:&error]){
        NSLog(@"Sucedio un error %@",[error localizedDescription]);
    }else{
        
        [self MessageBox:@"Actualizar información" andMessage:@"Se actualizó correctamente"];
        
        [_txtEdad setStringValue:@""];
        [_txtDomicilio setStringValue:@""];
        [_txtNombre setStringValue:@""];
        [_cmbEstadoCivil setStringValue:@""];
        
        [self cargarDatos];
        [_Tabla reloadData];
        
        
    }
}

- (IBAction)onEliminar:(id)sender {
    
    @try {
        Persona *personadelete = [personas objectAtIndex:[_Tabla selectedRow]];
        [contex deleteObject:personadelete];
        
        NSError *error = nil;
        
        if(![contex save:&error]){
            NSLog(@"Sucedio un error %@",[error localizedDescription]);
        }else{
            
            [self MessageBox:@"Eliminar información" andMessage:@"Se elimino correctamente"];
            
            [_txtEdad setStringValue:@""];
            [_txtDomicilio setStringValue:@""];
            [_txtNombre setStringValue:@""];
            [_cmbEstadoCivil setStringValue:@""];
            
            persona = nil;
            
        }
        
    } @catch (NSException *exception) {
        NSLog(@"Error %@",[exception reason]);
        [self MessageBox:@"Eliminar información" andMessage:@"Se elimino correctamente"];
    } @finally {
       
    }
    
    [self cargarDatos];
    [_Tabla reloadData];
    
}

-(void) cargarDatos{
    
    personas = nil;
    fetchedresultcontroller = nil;
    
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Persona"];
    NSSortDescriptor *sortdescriptor = [[NSSortDescriptor alloc] initWithKey:@"nombre" ascending:YES];
    request.sortDescriptors = @[sortdescriptor];
    
    fetchedresultcontroller = [[NSFetchedResultsController alloc] initWithFetchRequest:request                                                                                 managedObjectContext:contex
                                                                    sectionNameKeyPath:nil
                                                                             cacheName:nil];
    
    fetchedresultcontroller.delegate = self;
    
    NSError *error = nil;
    if([fetchedresultcontroller performFetch:&error]){
        personas = fetchedresultcontroller.fetchedObjects;
    }else {
        NSLog(@"No se pueden obtener los elementos por el error %@",[error localizedDescription]);
    }
    
    
}

-(void) MessageBox:(NSString *)Title andMessage:(NSString *)Message{
    
    NSAlert *alerta = [[NSAlert alloc] init];
    [alerta addButtonWithTitle:@"Continuar"];
    [alerta setMessageText:Title];
    [alerta setInformativeText:Message];
    [alerta setAlertStyle:NSAlertStyleInformational];
    [alerta runModal];
    
}
@end

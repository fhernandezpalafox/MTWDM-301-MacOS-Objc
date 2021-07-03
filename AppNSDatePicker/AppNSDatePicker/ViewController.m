//
//  ViewController.m
//  AppNSDatePicker
//
//  Created by Felipe Hernandez on 20/02/21.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)mostrarInformacion:(id)sender {
  
    //Forma #1
   // NSString *fechaFormato = [[NSString alloc] initWithFormat:@" La %@ es: %@",[_txtDescripcion stringValue], [_nsFecha stringValue]];
    
  //  [_lblDescripcionLarga setStringValue:fechaFormato];
  //  [_lblDescripcionLarga sizeToFit];
    
    //Forma #2
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSString *fecha = [formatter stringFromDate:[_nsFecha dateValue]];
    NSString *fechaFormato = [[NSString alloc] initWithFormat:@" La %@ es: %@",[_txtDescripcion stringValue], fecha];
    
    [_lblDescripcionLarga setStringValue:fechaFormato];
     [_lblDescripcionLarga sizeToFit];
    
    //Forma #3
    //Obtener la fecha y hora del sistema
   // NSString *fecha = [formatter stringFromDate:[NSDate date]];
    
    
    
}
@end

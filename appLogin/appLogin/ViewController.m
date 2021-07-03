//
//  ViewController.m
//  appLogin
//
//  Created by Felipe Hernandez on 13/03/21.
//

#import "ViewController.h"
#import "PrincipalViewController.h"


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)onAceptar:(id)sender {
    
    if([[_txtUsuario stringValue] isEqualToString:@"felipe"] &&
       [[_txtPassword stringValue] isEqualToString:@"fe"]){
        
        NSStoryboard *storyboard = [NSStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        
        PrincipalViewController *controller = (PrincipalViewController *)[storyboard instantiateControllerWithIdentifier:@"Principal"];
        controller.usuario  =  [_txtUsuario stringValue];
        [controller presentViewControllerAsModalWindow:controller];
        
    }
    
    
}
@end

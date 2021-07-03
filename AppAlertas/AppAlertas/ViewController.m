//
//  ViewController.m
//  AppAlertas
//
//  Created by Felipe Hernandez on 13/02/21.
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


- (IBAction)onAlertas:(NSButton *)sender {

    if ([sender tag] == 0) {
       
        NSAlert *alerta  = [[NSAlert alloc] init];
        [alerta addButtonWithTitle:@"Continuar"];
        [alerta addButtonWithTitle:@"Cancelar"];
        [alerta setMessageText:@"Alerta sencilla"];
        [alerta setInformativeText:@"Un texto de cuerpo"];
        [alerta setAlertStyle:NSAlertStyleInformational];
        
       NSModalResponse res =  [alerta runModal];
        
        if (res == NSAlertFirstButtonReturn) {
            NSLog(@"Continuar");
        }else if(res == NSAlertSecondButtonReturn){
            NSLog(@"Cancelar");
        }
        
    }else if([sender tag] == 1) {
       
        NSAlert *alerta  = [[NSAlert alloc] init];
        [alerta addButtonWithTitle:@"Continuar"];
        [alerta addButtonWithTitle:@"Cancelar"];
        [alerta setMessageText:@"Alerta sencilla 2"];
        [alerta setInformativeText:@"Un texto de cuerpo 2"];
        [alerta setAlertStyle:NSAlertStyleInformational];
        
        [alerta beginSheetModalForWindow:self.view.window completionHandler:^(NSModalResponse res) {
            if (res == NSAlertFirstButtonReturn) {
                NSLog(@"Continuar");
            }else if(res == NSAlertSecondButtonReturn){
                NSLog(@"Cancelar");
            }
        }];
        
    }else if([sender tag] == 2) {
       
        NSAlert *alerta  = [[NSAlert alloc] init];
        [alerta addButtonWithTitle:@"Aceptar"];
        [alerta setMessageText:@"Alerta sencilla"];
        [alerta setInformativeText:@"Un texto de cuerpo"];
        [alerta setAlertStyle:NSAlertStyleInformational];
        [alerta runModal];
        
    }

}
@end

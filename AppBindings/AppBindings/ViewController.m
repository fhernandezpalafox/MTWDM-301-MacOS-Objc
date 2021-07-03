//
//  ViewController.m
//  AppBindings
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

-(IBAction)Seleccionar:(id)sender{
    
    switch ([sender selectedSegment]) {
        case 0:
            [_txtSeleccionado setStringValue:@"Hombre"];
            break;
        case 1:
            [_txtSeleccionado setStringValue:@"Mujer"];
            break;
        case 2:
            [_txtSeleccionado setStringValue:@"Niño"];
            break;
        default:
            break;
    }
}

@end

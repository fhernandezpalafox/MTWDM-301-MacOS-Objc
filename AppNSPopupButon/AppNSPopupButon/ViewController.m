//
//  ViewController.m
//  AppNSPopupButon
//
//  Created by Felipe Hernandez on 06/03/21.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *nombres =  [[NSArray alloc] initWithObjects:@"Juan",@"Pedro",@"Oscar", nil];
    [_Lista addItemsWithTitles:nombres];
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)onAgregar:(id)sender {
    [_ListaPopup addItemWithTitle:[_txtItem stringValue]];
    [_txtItem setStringValue: @""];
}

- (IBAction)onChange:(id)sender {
    [_lblinformacion setStringValue:[_ListaPopup titleOfSelectedItem]];    
}
@end

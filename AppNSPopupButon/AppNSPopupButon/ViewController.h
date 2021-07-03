//
//  ViewController.h
//  AppNSPopupButon
//
//  Created by Felipe Hernandez on 06/03/21.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (strong) IBOutlet NSPopUpButton *Lista;
@property (strong) IBOutlet NSPopUpButton *ListaPopup;
@property (strong) IBOutlet NSTextField *txtItem;
@property (strong) IBOutlet NSTextField *lblinformacion;
- (IBAction)onChange:(id)sender;
- (IBAction)onAgregar:(id)sender;


@end


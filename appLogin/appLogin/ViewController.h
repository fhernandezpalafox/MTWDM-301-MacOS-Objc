//
//  ViewController.h
//  appLogin
//
//  Created by Felipe Hernandez on 13/03/21.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (strong) IBOutlet NSTextField *txtUsuario;
@property (strong) IBOutlet NSSecureTextField *txtPassword;

- (IBAction)onAceptar:(id)sender;

@end


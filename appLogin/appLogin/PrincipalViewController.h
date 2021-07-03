//
//  PrincipalViewController.h
//  appLogin
//
//  Created by Felipe Hernandez on 13/03/21.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface PrincipalViewController : NSViewController

@property NSString *usuario;
@property (strong) IBOutlet NSTextField *lblUsuario;

@end

NS_ASSUME_NONNULL_END

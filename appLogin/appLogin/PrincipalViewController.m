//
//  PrincipalViewController.m
//  appLogin
//
//  Created by Felipe Hernandez on 13/03/21.
//

#import "PrincipalViewController.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

- (void)viewWillAppear{
    [_lblUsuario setStringValue:[@"Bienvenido " stringByAppendingString:_usuario]];
}

@end

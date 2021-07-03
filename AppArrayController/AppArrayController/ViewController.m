//
//  ViewController.m
//  AppArrayController
//
//  Created by Felipe Hernandez on 06/03/21.
//

#import "ViewController.h"

@implementation ViewController
@synthesize persona = persona;

- (void)viewDidLoad {
    [super viewDidLoad];

    persona = [[NSMutableArray alloc] init];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end

//
//  ViewController.m
//  AppSlider
//
//  Created by Felipe Hernandez on 20/02/21.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [_slider setIntValue:10];
    [_lblinformacion setIntValue:[_slider intValue]];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)sliderChange:(id)sender {
    
    [_lblinformacion setIntValue:[_slider intValue]];
    
    [_imagen setFrameSize:NSMakeSize((CGFloat) [_slider doubleValue] , (CGFloat) [_slider doubleValue] )];
    
}
@end

//
//  ViewController.h
//  AppSlider
//
//  Created by Felipe Hernandez on 20/02/21.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (strong) IBOutlet NSTextField *lblinformacion;
@property (strong) IBOutlet NSSlider *slider;
@property (strong) IBOutlet NSImageView *imagen;
- (IBAction)sliderChange:(id)sender;




@end


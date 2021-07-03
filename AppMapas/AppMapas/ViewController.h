//
//  ViewController.h
//  AppMapas
//
//  Created by Felipe Hernandez on 06/03/21.
//

#import <Cocoa/Cocoa.h>
#import <MapKit/MapKit.h>

@interface ViewController : NSViewController
- (IBAction)onChageTypeMap:(id)sender;

@property (strong) IBOutlet MKMapView *Map;

@end


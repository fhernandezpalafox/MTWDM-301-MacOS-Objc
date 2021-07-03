//
//  ViewController.m
//  AppMapas
//
//  Created by Felipe Hernandez on 06/03/21.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CLLocationCoordinate2D coordenada = CLLocationCoordinate2DMake(21.152676, -101.711698);
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coordenada, 2000, 2000);
    
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    [annotation setTitle:@"De La Salle Bajio"];
    [annotation setCoordinate:coordenada];
    
    [self.Map setRegion:region];
    [self.Map addAnnotation:annotation];
    
    //[self.Map setZoomEnabled:NO];
    
    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)onChageTypeMap:(id)sender {
    switch ([sender selectedSegment]) {
        case 0:
            [_Map setMapType:MKMapTypeStandard];
            break;
        case 1:
            [_Map setMapType:MKMapTypeSatellite];
            break;
        case 2:
            [_Map setMapType:MKMapTypeHybrid];
            break;
        default:
            break;
    }
}
@end

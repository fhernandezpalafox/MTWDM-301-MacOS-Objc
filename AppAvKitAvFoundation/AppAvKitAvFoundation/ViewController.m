//
//  ViewController.m
//  AppAvKitAvFoundation
//
//  Created by Felipe Hernandez on 06/03/21.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"Video1" withExtension:@"mov"];
    
    self.avplayer.player = [AVPlayer playerWithURL:videoURL];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end

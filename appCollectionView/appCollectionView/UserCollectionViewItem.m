//
//  UserCollectionViewItem.m
//  appCollectionView
//
//  Created by Felipe Hernandez on 13/03/21.
//

#import "UserCollectionViewItem.h"

@interface UserCollectionViewItem ()

@end

@implementation UserCollectionViewItem

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

- (IBAction)onPresioname:(id)sender {
    NSLog(@"%@",_lblNombre.stringValue);
}
@end

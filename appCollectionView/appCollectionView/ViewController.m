//
//  ViewController.m
//  appCollectionView
//
//  Created by Felipe Hernandez on 13/03/21.
//

#import "ViewController.h"
#import "UserCollectionViewItem.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (nonnull NSCollectionViewItem *)collectionView:(nonnull NSCollectionView *)collectionView itemForRepresentedObjectAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UserCollectionViewItem *item = (UserCollectionViewItem *)[collectionView makeItemWithIdentifier:@"UserCollectionViewItem" forIndexPath:indexPath];
    item.lblNombre.stringValue = [NSString stringWithFormat:@" Usuario %li",(long)[indexPath item]];
    return item;
    
}

- (NSInteger)collectionView:(nonnull NSCollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return  20;
}


@end

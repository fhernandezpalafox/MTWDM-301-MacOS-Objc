//
//  UserCollectionViewItem.h
//  appCollectionView
//
//  Created by Felipe Hernandez on 13/03/21.
//

#import <Cocoa/Cocoa.h>

@interface UserCollectionViewItem : NSCollectionViewItem
@property (strong) IBOutlet NSTextField *lblNombre;
- (IBAction)onPresioname:(id)sender;

@end

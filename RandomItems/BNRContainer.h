//
//  BNRContainer.h
//  RandomItems
//
//  Created by Richard E Millet on 3/2/14.
//  Copyright (c) 2014 remillet. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem

#pragma mark - Initializers

#pragma mark - Getters and Setters
- (NSArray *)subItems;

#pragma mark - Misc
- (void)addSubItem:(BNRItem *)subItem;
@end

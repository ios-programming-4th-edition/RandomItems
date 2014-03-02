//
//  BNRItem.h
//  RandomItems
//
//  Created by Richard E Millet on 3/1/14.
//  Copyright (c) 2014 remillet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

// instance variables
{
	NSString *_itemName;
	NSString *_itemSerialNumber;
	int _itemValueInDollars;
	NSDate *_itemDateCreated;
}

// setters and getters

- (NSString *)itemName;
- (void)setItemName:(NSString *)itemName;

- (NSString *)itemSerialNumber;
- (void)setItemSerialNumber:(NSString *)itemSerialNumber;

- (int)valueInDollars;
- (void)setValueInDollars:(int)value;

- (NSDate *)itemDateCreated;
@end

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

#pragma mark - Class methods
//
// Class methods
//
+ (instancetype)randomItem;

#pragma mark - Initializers
//
// Initializers
//

// Designated initializer for BNRItem
- (instancetype)initWithItemName:(NSString *)name
				  valueInDollars:(int)value
					serialNumber:(NSString *)serialNumber;

- (instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)serialNumber;
- (instancetype)initWithItemName:(NSString *)name;

#pragma mark - getters and setters
//
// setters and getters
//

- (NSString *)itemName;
- (void)setItemName:(NSString *)itemName;

- (NSString *)itemSerialNumber;
- (void)setItemSerialNumber:(NSString *)itemSerialNumber;

- (int)valueInDollars;
- (void)setValueInDollars:(int)value;

- (NSDate *)itemDateCreated;
@end

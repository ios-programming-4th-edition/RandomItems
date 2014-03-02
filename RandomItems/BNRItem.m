//
//  BNRItem.m
//  RandomItems
//
//  Created by Richard E Millet on 3/1/14.
//  Copyright (c) 2014 remillet. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (NSString *)itemName
{
	return _itemName;
}

- (void)setItemName:(NSString *)itemName
{
	_itemName = itemName;
}

- (NSString *)itemSerialNumber
{
	return _itemSerialNumber;
}

- (void)setItemSerialNumber:(NSString *)itemSerialNumber
{
	_itemSerialNumber = itemSerialNumber;
}

- (int)valueInDollars;
{
	return _itemValueInDollars;
}

- (void)setValueInDollars:(int)value
{
	_itemValueInDollars = value;
}

- (NSDate *)itemDateCreated
{
	return _itemDateCreated;
}

@end

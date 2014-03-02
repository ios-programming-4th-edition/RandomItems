//
//  BNRItem.m
//  RandomItems
//
//  Created by Richard E Millet on 3/1/14.
//  Copyright (c) 2014 remillet. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

#pragma mark - Class method
//
// Class methods
//
+ (instancetype)randomItem
{
	BNRItem *result = nil;
	
	NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
	NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
	
	NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
	NSInteger nounIndex = arc4random() % [randomNounList count];
	
	NSString *randomName = [NSString stringWithFormat:@"%@ %@",
							  randomAdjectiveList[adjectiveIndex],
							  randomNounList[nounIndex]];
	int randomValue = arc4random() % 100;
	NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
									'0' + arc4random() % 10,
									'A' + arc4random() % 26,
									'0' + arc4random() % 10,
									'A' + arc4random() % 26,
									'0' + arc4random() % 10];
	// Note: 'self' refers to the Class BNRItem because we are in a Class method and not an instance method
	result = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
	
	return result;
}

#pragma mark - Initializers
//
// Initializers
//

// Override default initilizer so our designated initializer gets called.
- (instancetype)init
{
	return [self initWithItemName:@"Item"];
}

// Designated initializer
- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)serialNumber
{
	self = [super init];
	
	if (self != nil) {
		_itemName = name;
		_itemValueInDollars = value;
		_itemSerialNumber = serialNumber;
		_itemDateCreated = [[NSDate alloc] init];
	}
	
	return self;
}

- (instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)serialNumber
{
	return [self initWithItemName:name valueInDollars:0 serialNumber:serialNumber];
}

- (instancetype)initWithItemName:(NSString *)name
{
	return [self initWithItemName:name valueInDollars:0 serialNumber:@""];
}

#pragma mark - Getters and Setters
//
// Getters and Setters
//
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

#pragma mark - Overrides
//@Override
- (NSString *)description
{
	NSString *result = nil;
	
	result = [[NSString alloc] initWithFormat:@"%@ (%@): Value: $%d, recorded on %@.", self.itemName, self.itemSerialNumber,
			  self.valueInDollars, self.itemDateCreated];
	
	return result;
}

@end

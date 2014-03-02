//
//  BNRContainer.m
//  RandomItems
//
//  Created by Richard E Millet on 3/2/14.
//  Copyright (c) 2014 remillet. All rights reserved.
//

#import "BNRContainer.h"

@interface BNRContainer ()
{
	NSMutableArray *_subItemList;
}
@end

@implementation BNRContainer

#pragma mark - Class methods
+ (instancetype)randomItem
{
	BNRContainer *newContainer = [super randomItem];
	newContainer.itemName = [NSString stringWithFormat:@"%@ Container", newContainer.itemName];
	
	return newContainer;
}

#pragma mark - Initializers
// None so far

#pragma mark - Getters and Setters
- (NSArray *)subItems
{
	return _subItemList;
}

#pragma mark - Misc
- (void)addSubItem:(BNRItem *)subItem
{
	if (_subItemList == nil) {
		_subItemList = [[NSMutableArray alloc] init];
	}
	
	[_subItemList addObject:subItem];
}

#pragma mark - Overrides

- (int)valueInDollars
{
	int result = _itemValueInDollars;
	
	for (BNRItem *subItem in self.subItems) {
		result = result + subItem.valueInDollars;
	}
	
	return result;
}

- (NSString *)description
{
	NSMutableString *result = [[NSMutableString alloc] init];
	
	[result appendString:[super description]];
	for (BNRItem *subItem in self.subItems) {
		[result appendString:[NSString stringWithFormat:@"\n\t-%@", subItem]];
	}
	
	return result;
}



@end

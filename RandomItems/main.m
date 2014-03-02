//
//  main.m
//  RandomItems
//
//  Created by Richard E Millet on 3/1/14.
//  Copyright (c) 2014 remillet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

	@autoreleasepool {
	    
	    // insert code here...
	    NSLog(@"Hello, World!");
		
		NSMutableArray *itemList = [[NSMutableArray alloc] init];
		
		[itemList addObject:@"one"];
		[itemList addObject:@"two"];
		[itemList addObject:@"three"];
		[itemList insertObject:@"zero" atIndex:0];
		
		for (NSString *item in itemList) {
			NSLog(@"%@", item);
		}
		
		BNRItem *anItem = [[BNRItem alloc] init];
		anItem.itemName = @"Red Sofa";
		anItem.itemSerialNumber = @"A1B2C";
		anItem.valueInDollars = 100;
		NSLog(@"%@ %@ %@ %d", [anItem itemName], [anItem itemDateCreated], [anItem itemSerialNumber],
			  [anItem valueInDollars] );
		NSLog(@"%@ %@ %@ %d", anItem.itemName, anItem.itemDateCreated, anItem.itemSerialNumber,
			  anItem.valueInDollars);
		
		itemList = nil;
	    
	}
    return 0;
}


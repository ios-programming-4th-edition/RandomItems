//
//  main.m
//  RandomItems
//
//  Created by Richard E Millet on 3/1/14.
//  Copyright (c) 2014 remillet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

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
		
		itemList = [[NSMutableArray alloc] init];
		for (int i = 0; i < 10; i++) {
			itemList[i] = [BNRItem randomItem];
		}
		
		for (BNRItem *item in itemList) {
			NSLog(@"%@", item);
		}
		
		BNRContainer *container = [BNRContainer randomItem];
		[container addSubItem:[BNRItem randomItem]];
		[container addSubItem:[BNRItem randomItem]];
		
		BNRContainer *subContainer = [BNRContainer randomItem];
		[subContainer addSubItem:[BNRItem randomItem]];
		[subContainer addSubItem:[BNRItem randomItem]];
		[container addSubItem:subContainer];
		NSLog(@"%@", container);
						
		// Create a Red Sofa
		BNRItem *redSofa = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"A1B2C"];
		NSLog(@"%@", redSofa);
		
		// Create a Blue Sofa
		BNRItem *blueSofa = [[BNRItem alloc] initWithItemName:@"Blue Sofa"];
		NSLog(@"%@", blueSofa);
		
		// A unknown item
		BNRItem *unknown = [[BNRItem alloc] init];
		NSLog(@"%@", unknown);
		
		itemList = nil;
	}
	
    return 0;
}


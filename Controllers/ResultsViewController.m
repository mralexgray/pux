//
//  ResultsViewController.m
//  pux
//
//  Created by Prakash Raman on 26/02/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ResultsViewController.h"
#import "Util.h"

@implementation ResultsViewController
- (id)init{
	[super init];
	NSLog(@"Initializing...");
	resultsData = [[NSArray alloc] initWithArray: [Util processList]];
	return self;
}

- (int)numberOfRowsInTableView:(NSTableView *)tv{
	return [resultsData count];
}

- (id)tableView:(NSTableView *)tv 
objectValueForTableColumn:(NSTableColumn *)tableColumn 
			row:(int)row 
{ 
	id it  = @"pname";
//	NSLog(@"%s", [[tableColumn identifier] name]);
	if([tableColumn identifier]== it){
		return [resultsData objectAtIndex: row];
	}
	return @"huh";
} 
@end

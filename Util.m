//
//  Util.m
//  pux
//
//  Created by Prakash Raman on 26/02/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "Util.h"
#import <Carbon/Carbon.h>

@implementation Util
+(NSMutableArray *)processList{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	NSMutableArray *arr = [[NSMutableArray alloc] init];
//	return arr;
	ProcessSerialNumber psn = {0, kNoProcess};
	ProcessInfoRec rec = {0, malloc(32)};
	while(1)
	{
		if(noErr != GetNextProcess(&psn) || kNoProcess == psn.lowLongOfPSN) break;
		GetProcessInformation(&psn, &rec);
		NSLog(@"name is: %s", rec.processName);
		NSString *pname = [[NSString alloc] initWithFormat: @"%s", rec.processName];
		[arr addObject:pname];
		NSLog(@" values are: %@", arr);
	}
	[pool drain];
	return arr;
}
@end

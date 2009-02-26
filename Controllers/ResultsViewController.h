//
//  ResultsViewController.h
//  pux
//
//  Created by Prakash Raman on 26/02/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface ResultsViewController : NSObject {
	IBOutlet NSTableView *tableView;
	NSArray *resultsData;
}

@end

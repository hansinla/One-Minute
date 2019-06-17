//
//  YellowViewController.m
//  View Switcher
//
//  Created by Hans van Riet on 8/29/10.
//  Copyright 2010 House of Rock Productions, Inc. All rights reserved.
//

#import "YellowViewController.h"


@implementation YellowViewController

@synthesize  hostSwitch;
@synthesize  bgSwitch;


-(IBAction) toggleShowHost:(id)sender{
	
	UISegmentedControl *segmentedControl = (UISegmentedControl *)sender;
	NSInteger segment = segmentedControl.selectedSegmentIndex;
	
	if(segment == kPlayFemaleHostIndex){
		//set Female Host
		NSLog(@"FEMALE");
	}
	else {
		//set Male Host
		NSLog(@"MALE");

	}
	
}

-(IBAction) toggleBackGroundMovie:(id)sender{
	
	UISegmentedControl *segmentedControl = (UISegmentedControl *)sender;
	NSInteger segment = segmentedControl.selectedSegmentIndex;
	
	if(segment == kPlayNormalMovieIndex){
		//set Normal BG Movie
		NSLog(@"NORMAL");
	}
	else {
		//set Hyper BG Movie
		NSLog(@"HYPER");
		
	}
	
}





- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	
	[hostSwitch release];
	[bgSwitch release];
    [super dealloc];
}


@end

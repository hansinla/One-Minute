//
//  SwitchViewController.m
//  View Switcher
//
//  Created by Hans van Riet on 8/29/10.
//  Copyright 2010 House of Rock Productions, Inc. All rights reserved.
//

#import "SwitchViewController.h"
#import "BlueViewController.h"
#import "YellowViewController.h"
#import "AdViewController.h"
#import "AdMobView.h"





#define kLocalizedSettings		@"Setup"
#define kLocalizedBack			@"Back"


@implementation SwitchViewController

@synthesize	blueViewController;
@synthesize yellowViewController;
@synthesize flipViewButton;


- (void)viewDidLoad {
	
	BlueViewController *blueController = [[BlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
	self.blueViewController = blueController;
	[self.view insertSubview:blueController.view atIndex:0];
	[blueController release];
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



 

-(IBAction)switchViews:(id)sender{
	
	//Lazy load
	if (self.yellowViewController == nil) {
	
		YellowViewController *yellowController = [[YellowViewController alloc] initWithNibName:@"YellowView" bundle:nil];
		self.yellowViewController = yellowController;
		[yellowController release];
	
	}
	
		
	[UIView	beginAnimations:@"FlipView" context:nil];
	[UIView	setAnimationDuration:0.50];
	[UIView	setAnimationCurve:UIViewAnimationCurveEaseInOut];
	
	UIViewController *coming = nil;
	UIViewController *going = nil;
	UIViewAnimationTransition transition;
	
	
	
	if (self.blueViewController.view.superview == nil) {
		coming = blueViewController;
		going = yellowViewController;
		flipViewButton.title = kLocalizedSettings;
		transition = UIViewAnimationTransitionFlipFromRight;
	}
		else {
			coming = yellowViewController;
			going = blueViewController;
			flipViewButton.title = kLocalizedBack;
			transition = UIViewAnimationTransitionFlipFromLeft;
		}

		[UIView	setAnimationTransition:transition forView:self.view cache:NO];
		[coming viewWillAppear:YES];
		[going viewWillDisappear:YES];
		[going.view removeFromSuperview];
		[self.view	insertSubview:coming.view atIndex:0];
		[going viewDidDisappear:YES];
		[coming viewDidAppear:YES];
	
		[UIView commitAnimations];
	
	//[AdMobView requestFreshAd];
	 
	
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
	[yellowViewController release];
	[blueViewController release];
	[flipViewButton release];
    [super dealloc];
}


@end

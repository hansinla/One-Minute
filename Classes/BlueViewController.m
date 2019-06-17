//
//  BlueViewController.m
//  View Switcher
//
//  Created by Hans van Riet on 8/29/10.
//  Copyright 2010 House of Rock Productions, Inc. All rights reserved.
//

#import <MediaPlayer/MediaPlayer.h>
#import "BlueViewController.h"
#import "AdViewController.h"



@implementation BlueViewController


@synthesize movieButton;
@synthesize adViewController;



-(IBAction)movieButtonPressed:(id)sender{
	
	NSString *path = [[NSBundle mainBundle] pathForResource:@"normalBG" ofType:@"mov"];
	movieURL = [NSURL fileURLWithPath:path];
	
	//setup the player
	moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:movieURL];
	
	// When tapping movie, status bar will appear, it shows up
    // in portrait mode by default. Set orientation to landscape
    //[[UIApplication sharedApplication] setStatusBarOrientation:UIInterfaceOrientationLandscapeRight animated:NO];
	
	[[moviePlayer view] setFrame:[self.view bounds]];
	[moviePlayer prepareToPlay];
	moviePlayer.controlStyle = MPMovieControlStyleDefault;
	[self.view addSubview:[moviePlayer view]];
	
	// Play the movie
	[moviePlayer play];

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
	[adViewController release];
	[moviePlayer release];
    [super dealloc];
}


@end

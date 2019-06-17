//
//  BlueViewController.h
//  View Switcher
//
//  Created by Hans van Riet on 8/29/10.
//  Copyright 2010 House of Rock Productions, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import "AdViewController.h"



@interface BlueViewController : UIViewController {
	
	IBOutlet UIButton *movieButton;
	AdViewController *adViewController;
	NSURL *movieURL;
	MPMoviePlayerController *moviePlayer;



}


@property (nonatomic, retain) UIButton *movieButton;
@property (nonatomic, retain) IBOutlet AdViewController *adViewController;



-(IBAction)movieButtonPressed:(id)sender;

@end

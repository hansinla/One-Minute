//
//  SwitchViewController.h
//  View Switcher
//
//  Created by Hans van Riet on 8/29/10.
//  Copyright 2010 House of Rock Productions, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlueViewController.h"
#import "YellowViewController.h"



@class	BlueViewController;
@class	YellowViewController;


@interface SwitchViewController : UIViewController {
	YellowViewController *yellowViewController;
	BlueViewController *blueViewController;
	IBOutlet UIBarButtonItem *flipViewButton;


}

@property (nonatomic, retain) YellowViewController *yellowViewController;
@property (nonatomic, retain) BlueViewController *blueViewController;
@property (nonatomic, retain) UIBarButtonItem *flipViewButton;




-(IBAction)switchViews:(id)sender;

@end

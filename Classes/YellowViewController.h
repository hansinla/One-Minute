//
//  YellowViewController.h
//  View Switcher
//
//  Created by Hans van Riet on 8/29/10.
//  Copyright 2010 House of Rock Productions, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kPlayFemaleHostIndex 0
#define kPlayNormalMovieIndex 0




@interface YellowViewController : UIViewController {
	
	IBOutlet UISegmentedControl *hostSwitch;
	IBOutlet UISegmentedControl *bgSwitch;


}

@property (nonatomic, retain)	UISegmentedControl *hostSwitch;
@property (nonatomic, retain)	UISegmentedControl *bgSwitch;


-(IBAction) toggleShowHost:(id)sender;
-(IBAction) toggleBackGroundMovie:(id)sender;


@end

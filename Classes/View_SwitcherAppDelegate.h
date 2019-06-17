//
//  View_SwitcherAppDelegate.h
//  View Switcher
//
//  Created by Hans van Riet on 8/29/10.
//  Copyright House of Rock Productions, Inc. 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwitchViewController;

@interface View_SwitcherAppDelegate : NSObject <UIApplicationDelegate> {
    IBOutlet UIWindow *window;
	IBOutlet SwitchViewController *switchViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) SwitchViewController *switchViewController;

@end


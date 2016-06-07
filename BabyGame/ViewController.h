//
//  ViewController.h
//  BabyGame
//
//  Created by elo kudzo on 11/3/15.
//  Copyright (c) 2015 eurecom. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController {
    // Declaration of the IBOutlets
    IBOutlet UIImageView * slot;
    IBOutlet UIButton * button;
    CGPoint originalPosition;
    
}
// Properties for the members
@property(nonatomic, retain) UIImageView * slot; @property(nonatomic, retain) UIButton * button;

-(IBAction) buttonPressed;
-(IBAction) buttonMoved: (id)sender withEvent:(UIEvent *)event;
-(IBAction) buttonReleased;

@end


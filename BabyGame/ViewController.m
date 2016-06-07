//
//  ViewController.m
//  BabyGame
//
//  Created by elo kudzo  on 11/3/15.
//  Copyright (c) 2015 eurecom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize button, slot;

- (void)viewDidLoad {
    [super viewDidLoad];
    UIColor *background = [[UIColor alloc] initWithPatternImage:
    [UIImage imageNamed:@"GameBackground.png"]];
    self.view.backgroundColor = background;    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction) buttonPressed {
    originalPosition = button.center;
}


-(IBAction) buttonMoved: (id)sender withEvent:(UIEvent *)event {
    for(UITouch * touch in [event allTouches]) {
        button.center = [touch locationInView:self.view];
    }
}

-(CGFloat) distanceBetweenPoint:(CGPoint) point1 andPoint:(CGPoint)point2 {
    CGFloat dx = point2.x - point1.x;
    CGFloat dy = point2.y - point1.y;
    return sqrt(dx*dx + dy*dy );
}

-(IBAction) buttonReleased {
    if ([self distanceBetweenPoint:button.center andPoint:slot.center] < 100)
        button.center = slot.center;
    else
        button.center = originalPosition;
}
@end

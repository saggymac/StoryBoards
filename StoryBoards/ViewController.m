//
//  ViewController.m
//  StoryBoards
//
//  Created by Scott Guyer on 2/20/14.
//  Copyright (c) 2014 Scott Guyer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    self.view.backgroundColor = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction) pushAction:(id)sender
{
    UIViewController* vc = [self.storyboard instantiateViewControllerWithIdentifier:@"vcId"];
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end

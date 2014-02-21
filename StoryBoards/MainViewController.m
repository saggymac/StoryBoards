//
//  MainViewController.m
//  StoryBoards
//
//  Created by Scott Guyer on 2/20/14.
//  Copyright (c) 2014 Scott Guyer. All rights reserved.
//

#import "MainViewController.h"
#import "ViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController


- (IBAction) startSubflowAction:(id)sender
{
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Subflow" bundle:nil];
    UIViewController* vc = [sb instantiateInitialViewController];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:YES completion:^(void){}];
}

- (IBAction) endSubflowAction:(id)sender
{
    [self.presentedViewController dismissViewControllerAnimated:YES completion:^(){}];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

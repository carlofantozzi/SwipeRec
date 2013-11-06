//
//  ViewController.m
//  SwipeRec
//
//  Created by Docente on 06/11/13.
//  Copyright (c) 2013 Irecoop Veneto. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UISwipeGestureRecognizer * vswipegr =
    [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(reportVSwipe:)];
    vswipegr.direction = UISwipeGestureRecognizerDirectionUp | UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:vswipegr];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) restoreText
{
    self.label.text = @"...";
}

- (void) reportVSwipe:(UIGestureRecognizer *)recognizer
{
    [_label setText:@"Vertical swipe!"];
    [self performSelector:@selector(restoreText) withObject:nil afterDelay:2];
}

@end

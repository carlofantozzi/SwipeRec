//
//  ViewController.h
//  SwipeRec
//
//  Created by Docente on 06/11/13.
//  Copyright (c) 2013 Irecoop Veneto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;

- (void) restoreText;

- (void) reportVSwipe:(UIGestureRecognizer *)recognizer;

@end

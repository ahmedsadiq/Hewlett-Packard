//
//  ThirdViewController.m
//  Hewlett Packard
//
//  Created by Ahmed Sadiq on 17/03/2016.
//  Copyright © 2016 TxLabz. All rights reserved.
//

#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "NinthViewController.h"
#import "TenthViewController.h"
#import "Constants.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self  action:@selector(didSwipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipeRight];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didSwipe:(UISwipeGestureRecognizer*)swipe{
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"Swipe Left");
        
    } else if (swipe.direction == UISwipeGestureRecognizerDirectionRight) {
        [self.navigationController popViewControllerAnimated:true];
        NSLog(@"Swipe Right");
    } else if (swipe.direction == UISwipeGestureRecognizerDirectionUp) {
        NSLog(@"Swipe Up");
    } else if (swipe.direction == UISwipeGestureRecognizerDirectionDown) {
        NSLog(@"Swipe Down");
    }
}
- (IBAction)backPressed:(id)sender {
    [self.navigationController popViewControllerAnimated:true];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)whatPressed:(id)sender {
    FourthViewController *childrenSUVC;
    if(IS_IPAD) {
        childrenSUVC = [[FourthViewController alloc] initWithNibName:@"FourthViewController_iPad" bundle:nil];
    }
    else {
        childrenSUVC = [[FourthViewController alloc] initWithNibName:@"FourthViewController" bundle:nil];
    }
    
    [self.navigationController pushViewController:childrenSUVC animated:YES];
    [self.navigationController setNavigationBarHidden:YES];
}

- (IBAction)WhatItDoPressed:(id)sender {
    NinthViewController *childrenSUVC;
    if(IS_IPAD) {
        childrenSUVC = [[NinthViewController alloc] initWithNibName:@"NinthViewController_iPad" bundle:nil];
    }
    else {
        childrenSUVC = [[NinthViewController alloc] initWithNibName:@"NinthViewController" bundle:nil];
    }
    
    [self.navigationController pushViewController:childrenSUVC animated:YES];
    [self.navigationController setNavigationBarHidden:YES];
}
- (IBAction)howItWorksPresed:(id)sender {
    TenthViewController *childrenSUVC;
    if(IS_IPAD) {
        childrenSUVC = [[TenthViewController alloc] initWithNibName:@"TenthViewController_iPad" bundle:nil];
    }
    else {
        childrenSUVC = [[TenthViewController alloc] initWithNibName:@"TenthViewController" bundle:nil];
    }
    
    [self.navigationController pushViewController:childrenSUVC animated:YES];
    [self.navigationController setNavigationBarHidden:YES];
}
@end

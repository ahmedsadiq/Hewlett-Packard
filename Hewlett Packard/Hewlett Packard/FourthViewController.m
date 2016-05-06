//
//  FourthViewController.m
//  Hewlett Packard
//
//  Created by Ahmed Sadiq on 17/03/2016.
//  Copyright © 2016 TxLabz. All rights reserved.
//

#import "FourthViewController.h"
#import "FifthViewController.h"
#import "Constants.h"
@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self  action:@selector(didSwipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipeRight];
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self  action:@selector(didSwipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeLeft];
}

- (IBAction)backPressed:(id)sender {
    [self.navigationController popViewControllerAnimated:true];
}

- (void)didSwipe:(UISwipeGestureRecognizer*)swipe{
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"Swipe Left");
        FifthViewController *childrenSUVC;
        if(IS_IPAD) {
            childrenSUVC = [[FifthViewController alloc] initWithNibName:@"FifthViewController_iPad" bundle:nil];
        }
        else {
            childrenSUVC = [[FifthViewController alloc] initWithNibName:@"FifthViewController" bundle:nil];
        }
        
        [self.navigationController pushViewController:childrenSUVC animated:NO];
        [self.navigationController setNavigationBarHidden:YES];
        
    } else if (swipe.direction == UISwipeGestureRecognizerDirectionRight) {
        [self.navigationController popViewControllerAnimated:true];
        NSLog(@"Swipe Right");
    } else if (swipe.direction == UISwipeGestureRecognizerDirectionUp) {
        NSLog(@"Swipe Up");
    } else if (swipe.direction == UISwipeGestureRecognizerDirectionDown) {
        NSLog(@"Swipe Down");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  TenthViewController.m
//  Hewlett Packard
//
//  Created by Ahmed Sadiq on 18/03/2016.
//  Copyright © 2016 TxLabz. All rights reserved.
//

#import "TenthViewController.h"
#import "EleventhViewController.h"
#import "TwelevthViewController.h"
#import "Constants.h"
@interface TenthViewController ()

@end

@implementation TenthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self  action:@selector(didSwipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipeRight];
}

- (IBAction)backPressed:(id)sender {
    [self.navigationController popViewControllerAnimated:true];
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
- (IBAction)thirdPressed:(id)sender {
    TwelevthViewController *childrenSUVC;
    if(IS_IPAD) {
        childrenSUVC = [[TwelevthViewController alloc] initWithNibName:@"TwelevthViewController_iPad" bundle:nil];
    }
    else {
        childrenSUVC = [[TwelevthViewController alloc] initWithNibName:@"TwelevthViewController" bundle:nil];
    }
    
    [self.navigationController pushViewController:childrenSUVC animated:NO];
    [self.navigationController setNavigationBarHidden:YES];
    
}
- (IBAction)secondPressed:(id)sender {
    EleventhViewController *childrenSUVC;
    if(IS_IPAD) {
        childrenSUVC = [[EleventhViewController alloc] initWithNibName:@"EleventhViewController_iPad" bundle:nil];
    }
    else {
        childrenSUVC = [[EleventhViewController alloc] initWithNibName:@"EleventhViewController" bundle:nil];
    }
    
    [self.navigationController pushViewController:childrenSUVC animated:NO];
    [self.navigationController setNavigationBarHidden:YES];
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

//
//  SeventhViewController.m
//  Hewlett Packard
//
//  Created by Ahmed Sadiq on 18/03/2016.
//  Copyright © 2016 TxLabz. All rights reserved.
//

#import "SeventhViewController.h"
#import "EightViewController.h"
#import "SixthViewController.h"
#import "FifthViewController.h"
#import "FourthViewController.h"
#import "Constants.h"
@interface SeventhViewController ()

@end

@implementation SeventhViewController

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
    for (UIViewController *controller in self.navigationController.viewControllers) {
        
        //Do not forget to import AnOldViewController.h
        if ([controller isKindOfClass:[FourthViewController class]]) {
            
            [self.navigationController popToViewController:controller
                                                  animated:NO];
            break;
        }
    }
}

- (void)didSwipe:(UISwipeGestureRecognizer*)swipe{
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"Swipe Left");
//        EightViewController *childrenSUVC;
//        if(IS_IPAD) {
//            childrenSUVC = [[EightViewController alloc] initWithNibName:@"EightViewController_iPad" bundle:nil];
//        }
//        else {
//            childrenSUVC = [[EightViewController alloc] initWithNibName:@"EightViewController" bundle:nil];
//        }
//        
//        [self.navigationController pushViewController:childrenSUVC animated:NO];
//        [self.navigationController setNavigationBarHidden:YES];
        
    } else if (swipe.direction == UISwipeGestureRecognizerDirectionRight) {
        for (UIViewController *controller in self.navigationController.viewControllers) {
            
            //Do not forget to import AnOldViewController.h
            if ([controller isKindOfClass:[FourthViewController class]]) {
                
                [self.navigationController popToViewController:controller
                                                      animated:NO];
                break;
            }
        }
        NSLog(@"Swipe Right");
    } else if (swipe.direction == UISwipeGestureRecognizerDirectionUp) {
        NSLog(@"Swipe Up");
    } else if (swipe.direction == UISwipeGestureRecognizerDirectionDown) {
        NSLog(@"Swipe Down");
    }
}

- (IBAction)fourthPRessed:(id)sender {
    EightViewController *childrenSUVC;
    if(IS_IPAD) {
        childrenSUVC = [[EightViewController alloc] initWithNibName:@"EightViewController_iPad" bundle:nil];
    }
    else {
        childrenSUVC = [[EightViewController alloc] initWithNibName:@"EightViewController" bundle:nil];
    }
    [self.navigationController pushViewController:childrenSUVC animated:NO];
    [self.navigationController setNavigationBarHidden:YES];
}
- (IBAction)secondPressed:(id)sender {
    SixthViewController *childrenSUVC;
    if(IS_IPAD) {
        childrenSUVC = [[SixthViewController alloc] initWithNibName:@"SixthViewController_iPad" bundle:nil];
    }
    else {
        childrenSUVC = [[SixthViewController alloc] initWithNibName:@"SixthViewController" bundle:nil];
    }
    [self.navigationController pushViewController:childrenSUVC animated:NO];
    [self.navigationController setNavigationBarHidden:YES];
}
- (IBAction)firstPressed:(id)sender {
    for (UIViewController *controller in self.navigationController.viewControllers) {
        
        //Do not forget to import AnOldViewController.h
        if ([controller isKindOfClass:[FifthViewController class]]) {
            
            [self.navigationController popToViewController:controller
                                                  animated:NO];
            break;
        }
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

//
//  SixthViewController.m
//  Hewlett Packard
//
//  Created by Ahmed Sadiq on 17/03/2016.
//  Copyright © 2016 TxLabz. All rights reserved.
//

#import "SixthViewController.h"
#import "SeventhViewController.h"
#import "EightViewController.h"
#import "FifthViewController.h"
#import "FourthViewController.h"
#import "Constants.h"
@interface SixthViewController ()

@end

@implementation SixthViewController

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
//        SeventhViewController *childrenSUVC;
//        if(IS_IPAD) {
//            childrenSUVC = [[SeventhViewController alloc] initWithNibName:@"SeventhViewController_iPad" bundle:nil];
//        }
//        else {
//            childrenSUVC = [[SeventhViewController alloc] initWithNibName:@"SeventhViewController" bundle:nil];
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
- (IBAction)thirdPressed:(id)sender {
    SeventhViewController *childrenSUVC;
    if(IS_IPAD) {
        childrenSUVC = [[SeventhViewController alloc] initWithNibName:@"SeventhViewController_iPad" bundle:nil];
    }
    else {
        childrenSUVC = [[SeventhViewController alloc] initWithNibName:@"SeventhViewController" bundle:nil];
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

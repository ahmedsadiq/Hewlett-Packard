//
//  EleventhViewController.m
//  Hewlett Packard
//
//  Created by Ahmed Sadiq on 18/03/2016.
//  Copyright © 2016 TxLabz. All rights reserved.
//

#import "EleventhViewController.h"
#import "TwelevthViewController.h"
#import "TenthViewController.h"
#import "ThirdViewController.h"
#import "Constants.h"
@interface EleventhViewController ()

@end

@implementation EleventhViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self  action:@selector(didSwipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipeRight];
}

- (IBAction)backPressed:(id)sender {
    for (UIViewController *controller in self.navigationController.viewControllers) {
        
        //Do not forget to import AnOldViewController.h
        if ([controller isKindOfClass:[ThirdViewController class]]) {
            
            [self.navigationController popToViewController:controller
                                                  animated:NO];
            break;
        }
    }
}

- (void)didSwipe:(UISwipeGestureRecognizer*)swipe{
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"Swipe Left");
        
    } else if (swipe.direction == UISwipeGestureRecognizerDirectionRight) {
        for (UIViewController *controller in self.navigationController.viewControllers) {
            
            //Do not forget to import AnOldViewController.h
            if ([controller isKindOfClass:[ThirdViewController class]]) {
                
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
- (IBAction)firstPressed:(id)sender {
    for (UIViewController *controller in self.navigationController.viewControllers) {
        
        //Do not forget to import AnOldViewController.h
        if ([controller isKindOfClass:[TenthViewController class]]) {
            
            [self.navigationController popToViewController:controller
                                                  animated:NO];
            break;
        }
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

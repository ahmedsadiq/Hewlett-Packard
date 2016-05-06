//
//  SecondViewController.m
//  Hewlett Packard
//
//  Created by Ahmed Sadiq on 17/03/2016.
//  Copyright © 2016 TxLabz. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "ThirteenthViewController.h"
#import "FifteenViewController.h"
#import "Constants.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)startNowPressed:(id)sender {
    ThirdViewController *childrenSUVC;
    if(IS_IPAD) {
        childrenSUVC = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController_iPad" bundle:nil];
    }
    else {
        childrenSUVC = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    }
    
    [self.navigationController pushViewController:childrenSUVC animated:YES];
    [self.navigationController setNavigationBarHidden:YES];
}
- (IBAction)moreInfoPressed:(id)sender {
    ThirteenthViewController *childrenSUVC;
    if(IS_IPAD) {
        childrenSUVC = [[ThirteenthViewController alloc] initWithNibName:@"ThirteenthViewController_iPad" bundle:nil];
    }
    else {
        childrenSUVC = [[ThirteenthViewController alloc] initWithNibName:@"ThirteenthViewController" bundle:nil];
    }
    
    [self.navigationController pushViewController:childrenSUVC animated:YES];
    [self.navigationController setNavigationBarHidden:YES];
}
- (IBAction)meetExpertPressed:(id)sender {
    FifteenViewController *childrenSUVC;
    if(IS_IPAD) {
        childrenSUVC = [[FifteenViewController alloc] initWithNibName:@"FifteenViewController_iPad" bundle:nil];
    }
    else {
        childrenSUVC = [[FifteenViewController alloc] initWithNibName:@"FifteenViewController" bundle:nil];
    }
    
    [self.navigationController pushViewController:childrenSUVC animated:YES];
    [self.navigationController setNavigationBarHidden:YES];
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

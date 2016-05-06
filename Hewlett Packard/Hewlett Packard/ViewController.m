//
//  ViewController.m
//  Hewlett Packard
//
//  Created by Ahmed Sadiq on 17/03/2016.
//  Copyright © 2016 TxLabz. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "Constants.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)startPressed:(id)sender {
    SecondViewController *childrenSUVC;
    if(IS_IPAD) {
        childrenSUVC = [[SecondViewController alloc] initWithNibName:@"SecondViewController_iPad" bundle:nil];
    }
    else {
        childrenSUVC = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    }
    
    [self.navigationController pushViewController:childrenSUVC animated:NO];
    [self.navigationController setNavigationBarHidden:YES];
}

@end

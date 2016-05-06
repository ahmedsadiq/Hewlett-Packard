//
//  FourteenthViewController.h
//  Hewlett Packard
//
//  Created by Ahmed Sadiq on 18/03/2016.
//  Copyright © 2016 TxLabz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface FourteenthViewController : UIViewController <UITextFieldDelegate,MFMailComposeViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameTx;
@property (weak, nonatomic) IBOutlet UITextField *emailTxt;
@property (weak, nonatomic) IBOutlet UITextField *companyTxt;
@property (weak, nonatomic) IBOutlet UIImageView *mainImg;

- (IBAction)sendPressed:(id)sender;


- (IBAction)btn1:(id)sender;
@end

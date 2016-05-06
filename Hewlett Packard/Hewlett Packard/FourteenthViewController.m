//
//  FourteenthViewController.m
//  Hewlett Packard
//
//  Created by Ahmed Sadiq on 18/03/2016.
//  Copyright © 2016 TxLabz. All rights reserved.
//

#import "FourteenthViewController.h"

@interface FourteenthViewController ()

@end

@implementation FourteenthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self  action:@selector(didSwipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipeRight];
    
    UIColor *color = [UIColor colorWithRed:0.058 green:0.635 blue:0.607 alpha:1];
    _nameTx.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Name" attributes:@{NSForegroundColorAttributeName: color}];
    
    UIColor *color1 = [UIColor colorWithRed:0.058 green:0.635 blue:0.607 alpha:1];
    _emailTxt.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Email" attributes:@{NSForegroundColorAttributeName: color1}];
    
    UIColor *color2 = [UIColor colorWithRed:0.058 green:0.635 blue:0.607 alpha:1];
    _companyTxt.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Company Name" attributes:@{NSForegroundColorAttributeName: color2}];
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

#pragma mark - Text Field Delegate Methods
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self animateTextField:nil up:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [self animateTextField:nil up:NO];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (void) animateTextField: (UITextField*) textField up: (BOOL) up
{
    const int movementDistance = 360; // tweak as needed
    const float movementDuration = 0.3f; // tweak as needed
    
    int movement = (up ? -movementDistance : movementDistance);
    
    [UIView beginAnimations: @"anim" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}

- (IBAction)sendPressed:(id)sender {
    NSString *emailTitle = [NSString stringWithFormat:@"HPE Apollo 2000 | %@ | %@",_nameTx.text, _companyTxt.text];
    // Email Content
    NSString *messageBody = @"Here is the brief video of HPE Apollo 2000 at https://goo.gl/4D8cSI";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:_emailTxt.text];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    if ([MFMailComposeViewController canSendMail]) {
        mc.mailComposeDelegate = self;
        [mc setSubject:emailTitle];
        [mc setMessageBody:messageBody isHTML:NO];
        [mc setToRecipients:toRecipents];
        
        // Present mail view controller on screen
        [self presentViewController:mc animated:YES completion:NULL];
    }else{
        UIAlertView *anAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"No mail account setup on device" delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
        [anAlert addButtonWithTitle:@"OK"];
        [anAlert show];
    }
}

- (IBAction)btn1:(id)sender {
    UIButton *btn1 = (UIButton*)sender;
    switch (btn1.tag) {
        case 1:
            _mainImg.image = [UIImage imageNamed:@"fourteenthImg.png"];
            break;
        case 2:
            _mainImg.image = [UIImage imageNamed:@"fourthbg.png"];
            break;
        case 3:
            _mainImg.image = [UIImage imageNamed:@"seventhBg.png"];
            break;
        case 4:
            _mainImg.image = [UIImage imageNamed:@"eighthBg.png"];
            break;
        case 5:
            _mainImg.image = [UIImage imageNamed:@"seventhBg.png"];
            break;
        case 6:
            _mainImg.image = [UIImage imageNamed:@"eighthBg.png"];
            break;
        case 7:
            _mainImg.image = [UIImage imageNamed:@"fifthBg.png"];
            break;
        case 8:
            _mainImg.image = [UIImage imageNamed:@"img1.png"];
            break;
        case 9:
            _mainImg.image = [UIImage imageNamed:@"tenthBg.png"];
            break;
        case 10:
            _mainImg.image = [UIImage imageNamed:@"twelvethBg.png"];
            break;
        case 11:
            _mainImg.image = [UIImage imageNamed:@"eleventhBg.png"];
            break;
        case 12:
            _mainImg.image = [UIImage imageNamed:@"fourteenthImg.png"];
            break;
            
        default:
            break;
    }
}

- (IBAction)sendEmail:(id)sender {
    
    
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end

//
//  FifteenViewController.h
//  Hewlett Packard
//
//  Created by Ahmed Sadiq on 18/03/2016.
//  Copyright © 2016 TxLabz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <MessageUI/MessageUI.h>

@interface FifteenViewController : UIViewController <UITextFieldDelegate,MFMailComposeViewControllerDelegate>


@property (strong, nonatomic) MPMoviePlayerController *moviePlayer;

@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *cname;
@property (weak, nonatomic) IBOutlet UIView *outerView;
@property (weak, nonatomic) IBOutlet UIImageView *thumbNail;
@property (weak, nonatomic) IBOutlet UIImageView *playBtn;
- (IBAction)playBtnPressed:(id)sender;
@end

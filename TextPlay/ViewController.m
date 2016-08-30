//
//  ViewController.m
//  TextPlay
//
//  Created by Daniel Kwolek on 8/29/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UILabel *RightLabel;
@property (strong, nonatomic) IBOutlet UILabel *LeftLabel;
- (IBAction)buttonPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UITextField *CenterText;

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


- (void)clearAllText
{
    [self.CenterText setText:@""];
    [self.LeftLabel setText:@""];
    [self.RightLabel setText:@""];
}

- (IBAction)buttonPressed:(UIButton *)sender {
    if ([sender.titleLabel.text isEqualToString:@"UpdateLeft"])
    {
        [self.LeftLabel setText:[_CenterText text]];
    } else if ([sender.titleLabel.text isEqualToString:@"UpdateRight"])
    {
            [self.RightLabel setText:[_CenterText text]];
    } else if ([sender.titleLabel.text isEqualToString:@"Reset"])
    {
        [self clearAllText];
    }
}


- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end

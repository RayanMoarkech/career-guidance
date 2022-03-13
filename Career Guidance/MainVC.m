//
//  MainVC.m
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/7/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import "MainVC.h"

@interface MainVC ()

@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    firstLabel.alpha = 0.0;
    secondLabel.alpha = 0.0;
    thirdLabel.alpha = 0.0;
    tapToContinue.alpha = 0.0;
    [self labelAnimation];
    
    [self flashOn:tapToContinue];
    
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


#pragma mark - Animation

-(void)labelAnimation{
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelay:0];
    [UIView setAnimationDuration:1];
    [firstLabel setAlpha:1];
    [UIView setAnimationDuration:2];
    [secondLabel setAlpha:1];
    [UIView setAnimationDuration:3];
    [thirdLabel setAlpha:1];
    [UIView setAnimationDuration:4];
    [tapToContinue setAlpha:1];
    [UIView commitAnimations];
}


#pragma mark - Pulsing

-(void)flashOff:(UIView *)pulse {
    
    [UIView animateWithDuration:0.5
                          delay:0
                        options:UIViewAnimationOptionAllowUserInteraction animations:^ {
                            pulse.alpha = 0.2;  //don't animate alpha to 0, otherwise you won't be able to interact with it
                        }
                     completion:^(BOOL finished) {
                         [self flashOn:pulse];
                     }];
}

-(void)flashOn:(UIView *)pulse {
    
    [UIView animateWithDuration:0.5
                          delay:0
                        options:UIViewAnimationOptionAllowUserInteraction animations:^ {
                            pulse.alpha = 1;
                        }
                     completion:^(BOOL finished) {
                         
                         [self flashOff:pulse];
                     }];
}
/*
- (IBAction)tap:(id)sender {
    
    UITabBarController *tbc = [self.storyboard instantiateViewControllerWithIdentifier:@"CareerTabBar"];
    tbc.selectedIndex = 0;
    [self presentViewController:tbc animated:YES completion:nil];
    
}
*/
@end

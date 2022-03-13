//
//  HomePageVC.m
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/17/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import "HomePageVC.h"

@interface HomePageVC ()

@end

@implementation HomePageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [questionsBtn setTitle:@" Questions \nto consider" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)majors:(id)sender {
    
    UITabBarController *tbc = [self.storyboard instantiateViewControllerWithIdentifier:@"CareerTabBar"];
    tbc.selectedIndex = 0;
    [self presentViewController:tbc animated:YES completion:nil];
}

-(IBAction)questions:(id)sender{
    
    UITabBarController *tbc = [self.storyboard instantiateViewControllerWithIdentifier:@"CareerTabBar"];
    tbc.selectedIndex = 1;
    [self presentViewController:tbc animated:YES completion:nil];
}

-(IBAction)test:(id)sender{
    
    UITabBarController *tbc = [self.storyboard instantiateViewControllerWithIdentifier:@"CareerTabBar"];
    tbc.selectedIndex = 2;
    [self presentViewController:tbc animated:YES completion:nil];
}

-(IBAction)options:(id)sender{
    
    UITabBarController *tbc = [self.storyboard instantiateViewControllerWithIdentifier:@"CareerTabBar"];
    tbc.selectedIndex = 3;
    [self presentViewController:tbc animated:YES completion:nil];
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

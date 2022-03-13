//
//  QuesIntroVC.m
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/17/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import "QuesIntroVC.h"
#import "QuestionsVC.h"

@interface QuesIntroVC ()

@end

@implementation QuesIntroVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [introText setEditable:NO];
    
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

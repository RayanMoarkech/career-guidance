//
//  HomePageVC.h
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/17/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomePageVC : UIViewController {

    //UIButton
    IBOutlet UIButton *questionsBtn;
}

-(IBAction)majors:(id)sender;
-(IBAction)questions:(id)sender;
-(IBAction)test:(id)sender;
-(IBAction)options:(id)sender;

@end

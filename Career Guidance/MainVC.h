//
//  MainVC.h
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/7/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainVC : UIViewController {
    
    //UILabel
    IBOutlet UILabel *tapToContinue;
    IBOutlet UILabel *firstLabel;
    IBOutlet UILabel *secondLabel;
    IBOutlet UILabel *thirdLabel;
    
    //UIButton
    IBOutlet UIButton *tap;
}

-(void)flashOff:(UIView *)pulse;
-(void)flashOn:(UIView *)pulse;
//-(IBAction)tap:(id)sender;
-(void)labelAnimation;

@end

//
//  ResultVC.h
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/16/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultVC : UIViewController {
    
    //UILabel
    IBOutlet UILabel *titleLabel;
    IBOutlet UILabel *likeLabel;
    IBOutlet UILabel *forLabel;
    IBOutlet UILabel *careersLabel;
    
    //UIScrollView
    IBOutlet UIScrollView *scrollPage;
    
    //UITextView
    IBOutlet UITextView *resultText;
    
    //UIImageView
    IBOutlet UIImageView *boardImage;
}

//Property
@property (strong, nonatomic) NSArray *quizModal;

//void
-(void)checkResult;
-(void)setResultText;

@end

//
//  QuestionsVC.h
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/7/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface QuestionsVC : UIViewController{
    
    //UILabel
    IBOutlet UILabel *questionLabel;
    
    //UITextView
    IBOutlet UITextView *answerText;
    
    //UIImageView
    IBOutlet UIImageView *swipeUp;
    
    //UIButtton
    IBOutlet UIButton *homeBtn;
    IBOutlet UIButton *previousBtn;
    IBOutlet UIButton *nextBtn;
}

//IBAction
-(IBAction)previousClicked:(id)sender;
-(IBAction)nextClicked:(id)sender;

//Property
@property (strong, nonatomic) NSArray *Questions;
@property (strong, nonatomic) NSArray *Answers;

//Void
-(void)setQuestions;
-(void)setAnswers;
-(void)loadingFromView;

@end

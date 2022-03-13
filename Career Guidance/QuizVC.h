//
//  QuizVC.h
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/14/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizVC : UIViewController{
    
    //UILabel
    IBOutlet UILabel *questionLabel;
    IBOutlet UILabel *statementLabel;
    
    //UIButton
    IBOutlet UIButton *agreeBtn;
    IBOutlet UIButton *disagreeBtn;
    IBOutlet UIButton *showResultBtn;
}

//IBAction
-(IBAction)btnClicked:(id)sender;
-(IBAction)agreeClicked:(id)sender;
-(IBAction)disagreeClicked:(id)sender;
//-(IBAction)showResults:(id)sender;

//Void
-(void)setStatementCodeArray;

//Property
@property (nonatomic, strong) NSArray *Statement;
@property (nonatomic, strong) NSArray *CodeLetter;
@property (nonatomic, strong) NSArray *ResultOrder;
@property (nonatomic, strong) NSArray *Result;

@end

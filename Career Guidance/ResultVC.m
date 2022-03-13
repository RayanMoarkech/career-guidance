//
//  ResultVC.m
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/16/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import "ResultVC.h"
#import "QuizVC.h"

@interface ResultVC ()

@end

@implementation ResultVC{
    QuizVC *quizVC;
    NSString *likeTo;
    NSString *like;
    NSString *goodFor;
    NSString *careers;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%@", _quizModal);

    likeTo = @"These people like to:";
    [self checkResult];
    
    [self setResultText];
    
    [resultText setEditable:NO];
    
    //[scrollPage setScrollEnabled:YES];
}


-(void)checkResult {
    
    if ([_quizModal[0] isEqualToString:@"R"]) {
        
        titleLabel.text = @"Realistic";
        
        like = [NSString stringWithFormat:@"%@\n%@\n%@\n%@",
                          @"- Work with animals, tools, or machines; generally avoid social activities like teaching, healing, and informing others.",
                          @"- Use skills in working with tools, mechanical or electrical drawings, machines, or plants.",
                          @"- Value practical things you can see, touch, and use.",
                          @"- See self as practical, mechanical and realistic."];
        
        goodFor = @"Good careers for Realistic people are:";
        
        careers = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",
                             @"- Agriculture",
                             @"- Mechanic/Machinist",
                             @"- Health Services",
                             @"- Engineering",
                             @"- Computers",
                             @"- Food and Hospitality"];
    }
    
    if ([_quizModal[0] isEqualToString:@"I"]) {
        
        titleLabel.text = @"Investigative";
        
        like = [NSString stringWithFormat:@"%@\n%@\n%@",
                          @"- Watch, learn, analyze and solve problems.",
                          @"- Study and solve math or science problems; generally avoids leading, selling, or persuading people.",
                          @"- See self as precise, scientific and intellectual"];
        
        goodFor = @"Good careers for Investigative people are:";
        
        careers = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",
                             @"- Marine Biology",
                             @"- Medicine/Surgery",
                             @"- Engineering",
                             @"- Consumer Economics",
                             @"- Chemistry",
                             @"- Psychology"];
    }
    
    if ([_quizModal[0] isEqualToString:@"A"]) {
        
        titleLabel.text = @"Artistic";
        
        like = [NSString stringWithFormat:@"%@\n%@\n%@\n%@",
                          @"- Work in unstructured situations where they can use their creativity.",
                          @"- Do creative activities like art, drama, crafts, dance, music, or creative writing; generally avoids highly ordered or repetitive activities.",
                          @"- Value the creative arts -- like drama, music, art, or the works of creative writers.",
                          @"- See self as exxpressive, original, and independent."];
        
        goodFor = @"Good careers for Artistic people are:";
        
        careers = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",
                             @"- Communications",
                             @"- Cosmetology",
                             @"- Interior Design",
                             @"- Fine and Performing Arts",
                             @"- Architecture",
                             @"- Photography"];
    }
    
    if ([_quizModal[0] isEqualToString:@"S"]) {
        
        titleLabel.text = @"Social";
        
        like = [NSString stringWithFormat:@"%@\n%@\n%@\n%@",
                          @"- Work with other people, rather than things.",
                          @"- Do things to help people -- like teaching, nursing, or giving first aid, providing information; generally avoids using mechines, tools, or animals to achieve a goal.",
                          @"- Value helping people and solving social problems.",
                          @"- See self as helpful, friendly, and trustworthy."];
        
        goodFor = @"Good careers for Social people are:";
        
        careers = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",
                             @"- Counseling",
                             @"- Advertising",
                             @"- Nursing",
                             @"- Public Relations",
                             @"- Physical Therapy",
                             @"- Education"];
    }
    
    if ([_quizModal[0] isEqualToString:@"E"]) {
        
        titleLabel.text = @"Enterprising";
        
        like = [NSString stringWithFormat:@"%@\n%@\n%@\n%@",
                          @"- Work with others and enjoy persuading and performing.",
                          @"- Lead and persuade people, and to sell things and ideas; generally avoids activities that require careful observation and scientific, analytical thinking.",
                          @"- Value success in politics, leadership, or business.",
                          @"- See self as energetic, ambitious, and sociable."];
        
        goodFor = @"Good careers for Enterprising people are:";
        
        careers = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",
                             @"- Fashion Merchandising",
                             @"- Political Science",
                             @"- Real Estate",
                             @"- International Trade",
                             @"- Marketing/Sales",
                             @"- Banking/Finance"];
    }
    
    if ([_quizModal[0] isEqualToString:@"C"]) {
        
        titleLabel.text = @"Conventional";
        
        like = [NSString stringWithFormat:@"%@ \n %@ \n %@ \n %@ \n %@",
                          @"- do detail oriented, organized data work.",
                          @"- work with numbers, records, or machines in a set, orderly way; generally avoids ambiguous, unstructured activities",
                          @"- work with written records and numbers in a systematic, orderly way",
                          @"- value success in business",
                          @"- see self as orderly, and good at following a set plan"];
        
        goodFor = @"Good careers for Conventional people are:";
        
        careers = [NSString stringWithFormat:@"%@ \n %@ \n %@ \n %@ \n %@ \n %@ \n %@",
                             @"- Accounting",
                             @"- Medical Records",
                             @"- Court Reporting",
                             @"- Banking",
                             @"- Insurance",
                             @"- Data Processing",
                             @"- Administration"];
    }
}


-(void)setResultText {
    
    resultText.text = [NSString stringWithFormat:@"%@\n\n%@\n\n%@\n\n%@",
                       likeTo,
                       like,
                       goodFor,
                       careers];
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

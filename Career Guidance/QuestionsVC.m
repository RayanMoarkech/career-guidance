//
//  QuestionsVC.m
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/7/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import "QuestionsVC.h"
#import "LoadObject.h"

@interface QuestionsVC ()

@end

@implementation QuestionsVC {
    int quesNum;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setQuestions];
    [self setAnswers];
    
    
    
    quesNum = 1;
    
    [answerText setEditable:NO];
    
    
    nextBtn.hidden = NO;
    previousBtn.hidden = YES;

    
    
    [self loadingFromView];
    
    [self checkQuestion];
    [self checkAnswer];
    
    [LoadObject hello];
    NSLog(@"Hi");
    
    
    
}



#pragma mark - Load from the LoadObject View

-(void)loadingFromView {
    
    //Button Layers
    [LoadObject setBtnLayer:nextBtn];
    [LoadObject setBtnLayer:previousBtn];
    [LoadObject setBtnLayer:homeBtn];
    
    //Flashing
    [LoadObject flashOff:swipeUp];
}




#pragma mark - Setting the Questions and Answers

-(void)setQuestions {
    
    _Questions = @[@"What is a major?",
                   @"What are you interested in?",
                   @"What is your ideal career?",
                   @"What influences your major?",
                   @"Do I know enough about this major?",
                   @"What are your academic strengths?",
                   @"What are the career opportunities for this major?",
                   @"Have I talked to someone in this major?",
                   @"Am I good at this major?",];
}

-(void)setAnswers {
    
    _Answers = @[@"Your major in college is your specialized area of study. Beyond general college requirements, you'll also take a group of courses in a subject of your choosing such as Chemistry, Comparative Literature, or Political Science.",
                 
                 @"Do you like to study human expression of ideas through the arts, language, literature, and philosophy? Check out Arts and Humanities.\n Are you curious about societies, nations, policies, commerce, media and the individuals that form them? Check into the Social Sciences. \n Do you have an interest in the structures and patterns of living creatures, environments, and the physical world? Check into the Natural Sciences. \n Do you think well quantitatively and want to learn how to measure, design, and numerically describe ideas and objects? Check out Engineering, Computer, Quantitative, and Technical Sciences. \n Print out the list of undergraduate majors and cross off the ones you know you’re not interested in. If you can narrow it from over 150 down to 10 or 20, you’ve really accomplished something.",
                 
                 @"This question needs some time to think between you and yourself. Take time to think about what you like to do; dream and imagine ideal careers. There are so many opportunities, so many different types of jobs and careers in a wide variety of industries — and there are also other career paths that are just emerging. Even if you are fairly sure of a career choice, take the time in high school to explore similar (or even vastly different) careers. Explore all your options. Examine your likes and dislikes and take a few career-assessment tests. Answer the question, if you could have any job right now, what would it be — and why? Don’t let any barriers hold you back from finding the perfect career.",
                 
                 @" Remember that everyone must follow his or her own path in life. Don’t let anyone control your dreams and ambitions. It's not at all uncommon for a student to pick a major because someone else—almost always a family member—thinks it's a good idea. Don’t spend too much time worrying what other people in your high school are doing — or letting their opinions about your dreams and ambitions affect your decision. Maybe that's what mom or dad majored in, or maybe they see the chance to turn you into the biggest earner in family history. But someone else's wishes really shouldn't dictate what you decide to do at college, not to mention, possibly, the rest of your life. That's especially true if it's something that doesn't interest you at all and that you would never have chosen for yourself. The worst thing you can do is choose a career to please someone else.",
                 
                 @"Some majors sound a lot better before you start taking courses in them. In some cases, that's because the field is something you've never studied before and you don't realize what's involved in the discipline. In other cases, it's because you've studied the field and done well in it, but once you hit college, the level of difficulty goes off the deep end in ways you never anticipated. So don't marry the major before you've done some serious dating. That means taking a number of representative courses—that is, upper-level courses in the field, not just the introductory courses.",
                 
                 //check out this
                 @"Do your academic strengths qualify you for a given major? Challenge yourself in high school, but don’t overwhelm yourself. You should take courses related to your field of interest. You need to discover early on whether you enjoy these subjects and do well in them in college. Do get the most out of high school. Whenever possible, ingage in extracuricular projects and work shops; you’ll learn more — and it will look good to the college admissions staff. Obviously, you need to stay focused on getting good grades, but don’t overload your schedule — or yourself — so that it makes you sick or burnt out.",
                 // Take challeging. Practice extra curiculem.
                 
                 @"These days, most students consider what they're going to do with a degree in major X before they sign up for that major. Unfortunately, many students base their assessment of job prospects on current conditions, rather than graduation time. Make sure you're not planning for a career that will be in its dying days by the time you're trained for it.",
                 
                 @"No one should commit to a major before talking to a live human being who has actually taken this major and a professor who's actually taught it. Ask an advanced undergraduate or (if they have them at your school) graduate student—and a professor or undergraduate adviser—what's in store for you if you sign on to that major. You want to know the good, the bad, and the ugly.",
                 
                 @"Under no circumstances should you major in something you don't have the skills and gifts for. Even if being a molecular biologist, creative writer, or international journalist sounds like the coolest thing on the planet, it's not going to help you if you have no ability in that field. Choosing a wrong major would fill your life with stress, frustration, and, in the worst case, despair.",];
}


-(void)checkQuestion {
    
    questionLabel.text = [NSString stringWithFormat:@"Question %d: %@", quesNum, _Questions[quesNum-1]];
    
    //Previous Button
    if (quesNum == 1) {
        previousBtn.hidden = YES;
    }
    if (quesNum > 1) {
        previousBtn.hidden = NO;
    }
    
    //Next Button
    if (quesNum == 9) {
        nextBtn.hidden = YES;
    }
    if (quesNum < 9) {
        nextBtn.hidden = NO;
    }
    
    //Swipe Up Image
    static const CGFloat kArbritaryHeight = 17.f;
    CGFloat adjustedContentHeight = answerText.contentSize.height - kArbritaryHeight;
    CGFloat boundsHeight = CGRectGetHeight(answerText.bounds);
    BOOL tooMuchContent = adjustedContentHeight > boundsHeight;
    
    if (tooMuchContent)
    {
        swipeUp.hidden = NO;
    }
    else
    {
        swipeUp.hidden = YES;
    }
    
    
    
    //    if (quesNum == 1 || quesNum == 7 || quesNum == 8 || quesNum == 9) {
    //        swipeUp.hidden = YES;
    //    } else {
    //        swipeUp.hidden = NO;
    //    }
}

-(void)checkAnswer {
    
    answerText.text = [NSString stringWithFormat:@"%@", _Answers[quesNum-1]];
}

-(IBAction)previousClicked:(id)sender {
    quesNum -= 1;
    [self checkQuestion];
    [self checkAnswer];
}

-(IBAction)nextClicked:(id)sender {
    quesNum += 1;
    [self checkQuestion];
    [self checkAnswer];
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

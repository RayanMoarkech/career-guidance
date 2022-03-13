//
//  QuizVC.m
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/14/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import "QuizVC.h"
#import "ResultVC.h"
#import "QuestionsVC.h"

@interface QuizVC ()
@property BOOL isR;
@property BOOL isI;
@property BOOL isA;
@property BOOL isS;
@property BOOL isE;
@property BOOL isC;
@end

@implementation QuizVC{
    int quesNum;
    int totalR;
    int totalI;
    int totalA;
    int totalS;
    int totalE;
    int totalC;
    NSString *first;
    NSString *second;
    NSString *third;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    quesNum = 1;
    
    //Reseting the total RIASEC total
    totalR = 0;
    totalI = 0;
    totalA = 0;
    totalS = 0;
    totalE = 0;
    totalC = 0;
    
    //Default result order.
    /*_ResultOrder = @[[NSString stringWithFormat:@"%d", totalR],
                     [NSString stringWithFormat:@"%d", totalI],
                     [NSString stringWithFormat:@"%d", totalA],
                     [NSString stringWithFormat:@"%d", totalS],
                     [NSString stringWithFormat:@"%d", totalE],
                     [NSString stringWithFormat:@"%d", totalC],];*/
    
    _ResultOrder = @[[NSNumber numberWithInt:totalR],
                    [NSNumber numberWithInt:totalI],
                    [NSNumber numberWithInt:totalA],
                    [NSNumber numberWithInt:totalS],
                    [NSNumber numberWithInt:totalE],
                    [NSNumber numberWithInt:totalC],];
    NSLog(@"%@", _ResultOrder);
    
    showResultBtn.hidden = YES;
    
    [self setStatementCodeArray];
    
    questionLabel.text = [NSString stringWithFormat:@"Question %d of 42", quesNum];
    statementLabel.text = _Statement[quesNum-1];
    
    //Set an array for the code
    //Then if the string of the question is this code, let the boolean of this code be this....
    //Then for the boolean, we add one to the integer.
}

-(void)setStatementCodeArray{
    
    _Statement = @[/* 00 */@"I like to work on cars",
                   /* 01 */@"I like to do puzzles",
                   /* 02 */@"I am good at working independently",
                   /* 03 */@"I like to work in teams",
                   /* 04 */@"I am an ambitious person, I set goals for myself",
                   /* 05 */@"I like to organize things, (files, desks/offices)",
                   /* 06 */@"I like to build things",
                   /* 07 */@"I like to read about art and music",
                   /* 08 */@"I like to have clear instructions to follow",
                   /* 09 */@"I like to try to influence or persuade people",
                   /* 10 */@"I like to do experiments",
                   /* 11 */@"I like to teach or train people",
                   /* 12 */@"I like trying to help people solve their problems",
                   /* 13 */@"I like to take care of animals",
                   /* 14 */@"I wouldn't mind working 8 hours per day in an office",
                   /* 15 */@"I like selling things",
                   /* 16 */@"I enjoy creative writing",
                   /* 17 */@"I enjoy science",
                   /* 18 */@"I am quick to take on new responsibilities",
                   /* 19 */@"I am interested in healing people",
                   /* 20 */@"I enjoy trying to figure out how things work",
                   /* 21 */@"I like putting things together or assembling things",
                   /* 22 */@"I am a creative person",
                   /* 23 */@"I pay attention to details",
                   /* 24 */@"I like to do filing or typing",
                   /* 25 */@"I like to analyze things (problems/situations)",
                   /* 26 */@"I like to play instruments or sing",
                   /* 27 */@"I enjoy learning about other cultures",
                   /* 28 */@"I would like to start my own business",
                   /* 29 */@"I like to cook",
                   /* 30 */@"I like acting in plays",
                   /* 31 */@"I am a practical person",
                   /* 32 */@"I like working with numbers or charts",
                   /* 33 */@"I like to get into discussions about issues",
                   /* 34 */@"I am good at keeping records of my work",
                   /* 35 */@"I like to lead",
                   /* 36 */@"I like working outdoors",
                   /* 37 */@"I would like to work in an office",
                   /* 38 */@"I am good at math",
                   /* 39 */@"I like helping people",
                   /* 40 */@"I like to draw",
                   /* 41 */@"I like to give speeches",
                           @"",];
    
    // The RIASEC Test
    
    _CodeLetter = @[/* 00 */@"R",
                    /* 01 */@"I",
                    /* 02 */@"A",
                    /* 03 */@"S",
                    /* 04 */@"E",
                    /* 05 */@"C",
                    /* 06 */@"R",
                    /* 07 */@"A",
                    /* 08 */@"C",
                    /* 09 */@"E",
                    /* 10 */@"I",
                    /* 11 */@"S",
                    /* 12 */@"S",
                    /* 13 */@"R",
                    /* 14 */@"C",
                    /* 15 */@"E",
                    /* 16 */@"A",
                    /* 17 */@"I",
                    /* 18 */@"E",
                    /* 19 */@"S",
                    /* 20 */@"I",
                    /* 21 */@"R",
                    /* 22 */@"A",
                    /* 23 */@"C",
                    /* 24 */@"C",
                    /* 25 */@"I",
                    /* 26 */@"A",
                    /* 27 */@"S",
                    /* 28 */@"E",
                    /* 29 */@"R",
                    /* 30 */@"A",
                    /* 31 */@"R",
                    /* 32 */@"I",
                    /* 33 */@"S",
                    /* 34 */@"C",
                    /* 35 */@"E",
                    /* 36 */@"R",
                    /* 37 */@"C",
                    /* 38 */@"I",
                    /* 39 */@"S",
                    /* 40 */@"A",
                    /* 41 */@"E",
                            @"",];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)btnClicked:(id)sender{
    
    quesNum += 1;
    questionLabel.text = [NSString stringWithFormat:@"Question %d of 42", quesNum];
    statementLabel.text = _Statement[quesNum-1];
    
    if (quesNum > 42) {
        statementLabel.text = @"Done!";
        agreeBtn.hidden = YES;
        disagreeBtn.hidden = YES;
        questionLabel.hidden = YES;
        showResultBtn.hidden = NO;
    }
}

-(IBAction)agreeClicked:(id)sender{
    
    if ([_CodeLetter[quesNum-1] isEqualToString:@"R"]) {
        totalR += 1;
    }
    
    if ([_CodeLetter[quesNum-1] isEqualToString:@"I"]) {
        totalI += 1;
    }
    
    if ([_CodeLetter[quesNum-1] isEqualToString:@"A"]) {
        totalA += 1;
    }
    
    if ([_CodeLetter[quesNum-1] isEqualToString:@"S"]) {
        totalS += 1;
    }
    
    if ([_CodeLetter[quesNum-1] isEqualToString:@"E"]) {
        totalE += 1;
    }
    
    if ([_CodeLetter[quesNum-1] isEqualToString:@"C"]) {
        totalC += 1;
    }
    
}

-(IBAction)disagreeClicked:(id)sender{
    
}
/*
-(IBAction)showResults:(id)sender{
    
    _ResultOrder = @[[NSNumber numberWithInt:totalR],
                     [NSNumber numberWithInt:totalI],
                     [NSNumber numberWithInt:totalA],
                     [NSNumber numberWithInt:totalS],
                     [NSNumber numberWithInt:totalE],
                     [NSNumber numberWithInt:totalC],];
    
    _ResultOrder = [_ResultOrder sortedArrayUsingSelector:@selector(compare:)];
    
    if ([NSNumber numberWithInt:totalR] == _ResultOrder[5]) {
        first = @"R";
        _Result = @[@"R",];
        NSLog(@"First: R");
    }
    
    else if ([NSNumber numberWithInt:totalI] == _ResultOrder[5]) {
        first = @"I";
        _Result = @[@"I",];
        NSLog(@"First: I");
    }
    
    else if ([NSNumber numberWithInt:totalA] == _ResultOrder[5]) {
        first = @"A";
        _Result = @[@"A",];
        NSLog(@"First: A");
    }
    
    else if ([NSNumber numberWithInt:totalS] == _ResultOrder[5]) {
        first = @"S";
        _Result = @[@"S",];
        NSLog(@"First: S");
    }
    
    else if ([NSNumber numberWithInt:totalE] == _ResultOrder[5]) {
        first = @"E";
        _Result = @[@"E",];
        NSLog(@"First: E");
    }
    
    else if ([NSNumber numberWithInt:totalC] == _ResultOrder[5]) {
        first = @"C";
        _Result = @[@"C",];
        NSLog(@"First: C");
    }
    
    NSLog(@"%@", _ResultOrder);
    NSLog(@"%@", _Result);
    
     ResultVC *rsltVC;
    rsltVC.quizModal = @[_Result[0],];
    
    NSLog(@"%@", rsltVC.quizModal); 
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    // If you need to pass data to the next controller do it here
    
    //Preparing Segue
    
    if ([[segue identifier] isEqualToString:@"showRslts"]) {
        
        //When the identifier is named as ShowDetails, this will happen.
        //The name of the Show segue from NgoTCell to DetailVC is named ShowDetails.
        
        ResultVC *rsltVC = [segue destinationViewController];
        
        _ResultOrder = @[[NSNumber numberWithInt:totalR],
                         [NSNumber numberWithInt:totalI],
                         [NSNumber numberWithInt:totalA],
                         [NSNumber numberWithInt:totalS],
                         [NSNumber numberWithInt:totalE],
                         [NSNumber numberWithInt:totalC],];
        
        _ResultOrder = [_ResultOrder sortedArrayUsingSelector:@selector(compare:)];
        
        if ([NSNumber numberWithInt:totalR] == _ResultOrder[5]) {
            first = @"R";
            _Result = @[@"R",];
            NSLog(@"First: R");
        }
        
        else if ([NSNumber numberWithInt:totalI] == _ResultOrder[5]) {
            first = @"I";
            _Result = @[@"I",];
            NSLog(@"First: I");
        }
        
        else if ([NSNumber numberWithInt:totalA] == _ResultOrder[5]) {
            first = @"A";
            _Result = @[@"A",];
            NSLog(@"First: A");
        }
        
        else if ([NSNumber numberWithInt:totalS] == _ResultOrder[5]) {
            first = @"S";
            _Result = @[@"S",];
            NSLog(@"First: S");
        }
        
        else if ([NSNumber numberWithInt:totalE] == _ResultOrder[5]) {
            first = @"E";
            _Result = @[@"E",];
            NSLog(@"First: E");
        }
        
        else if ([NSNumber numberWithInt:totalC] == _ResultOrder[5]) {
            first = @"C";
            _Result = @[@"C",];
            NSLog(@"First: C");
        }
        
        NSLog(@"%@", _ResultOrder);
        NSLog(@"%@", _Result);
        
        //Array push with the view from table cell to detailModal to detailVC
        rsltVC.quizModal = @[_Result[0],];
    }
}





@end

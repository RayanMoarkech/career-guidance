//
//  DetailVC.h
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/14/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailVC : UIViewController {
    
    //TextView
    IBOutlet UITextView *detailText;
    
    //UILabel
    IBOutlet UILabel *categoryLabel;
}

//Property
@property (strong, nonatomic) NSArray *detailModal;

//Void
-(void)setInformation;
-(void)setTextView;

@end

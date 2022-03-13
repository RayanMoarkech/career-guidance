//
//  LoadObject.m
//  Career Guidance
//
//  Created by Rayan Moarkech on 8/14/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import "LoadObject.h"
#import "QuestionsVC.h"

@implementation LoadObject

#pragma mark - Definition

/*
 https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/index.html
 
 Content view controllers manage a discrete piece of your app’s content and are the main type of view controller that you create.
 
 Container view controllers collect information from other view controllers (known as child view controllers) and present it in a way that facilitates navigation or presents the content of those view controllers differently.
 
 The most important role of a view controller is to manage a hierarchy of views.
 
 This is a VIEW
 */

+(void)hello {
    NSLog(@"HEllo");
}


#pragma mark - Button Layer

+(void)setBtnLayer:(UIButton *)btnName {
    
    btnName.layer.cornerRadius = 7.0;
    btnName.layer.borderColor = [UIColor whiteColor].CGColor;
    btnName.layer.borderWidth = 2.0f;
    
}





#pragma mark - Pulsing of a Label / Button

+(void)flashOff:(UIView *)pulse {
    
    [UIView animateWithDuration:0.5
                          delay:0
                        options:UIViewAnimationOptionAllowUserInteraction animations:^ {
                            pulse.alpha = 0.2;  //don't animate alpha to 0, otherwise you won't be able to interact with it
                        }
                     completion:^(BOOL finished) {
                         [self flashOn:pulse];
                     }];
    
}

+(void)flashOn:(UIView *)pulse {
    
    [UIView animateWithDuration:0.5
                          delay:0
                        options:UIViewAnimationOptionAllowUserInteraction animations:^ {
                            pulse.alpha = 1;
                        }
                     completion:^(BOOL finished) {
                         
                         [self flashOff:pulse];
                     }];
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

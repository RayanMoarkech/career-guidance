//
//  MajorsTableVC.h
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/6/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MajorsTableVC : UITableViewController

@property (nonatomic, strong) NSArray *Images;
@property (nonatomic, strong) NSArray *Majors;

-(void)setMajorsArray;
-(void)setImagesArray;

@end

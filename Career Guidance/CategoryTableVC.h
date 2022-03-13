//
//  CategoryTableVC.h
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/13/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryTableVC : UITableViewController{

}

@property (weak, nonatomic) IBOutlet UINavigationItem *majorLabel;

@property (nonatomic, strong) NSArray *Category;
@property (nonatomic, strong) NSArray *Abbrev;

@property (strong, nonatomic) NSArray *categoryModal;

-(void)checkForCategory;

@end

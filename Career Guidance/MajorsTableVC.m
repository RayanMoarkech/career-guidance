//
//  MajorsTableVC.m
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/6/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import "MajorsTableVC.h"
#import "MajorsCell.h"
#import "CategoryTableVC.h"

@interface MajorsTableVC ()

@end

@implementation MajorsTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    // Set color to the cell seperator
    self.tableView.separatorColor = [UIColor colorWithRed:10/255.0 green:90/255.0 blue:220/255.0 alpha:0.8];
    
    // We can change the back button string label from here. Now it is set to "" : No String
    UIBarButtonItem *newBackButton = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    [[self navigationItem] setBackBarButtonItem:newBackButton];
    
    [self setMajorsArray];
    [self setImagesArray];
    
}

-(void)setMajorsArray {
    
    //The Table Cell Arrays to be displayed
    
    _Majors = @[/* 00 */ @"Agriculture, Environmental, and Related Sciences",
                         /* 01 */ @"Architecture and Related Services",
                         /* 02 */ @"Ethnic, Disciplinary, Gender, and Group Studies",
                         /* 03 */ @"Aviation",
                         /* 04 */ @"Biological and Biomedical Sciences",
                         /* 05 */ @"Business, Managemnet, Marketing and Related Services",
                         /* 06 */ @"Communication, Journalism, and Related Programs",
                         /* 07 */ @"Computer and Information Sciences and Support Services",
                         /* 08 */ @"Education",
                         /* 09 */ @"Engineering",
                         /* 10 */ @"Languages, Literatures, Linguistics",
                         /* 11 */ @"Health Professions and Related Program",
                         /* 12 */ @"History",
                         /* 13 */ @"Human Services",
                         /* 14 */ @"Legal Professions and Studies",
                         /* 15 */ @"Mathematics and Statistics",
                         /* 16 */ @"Leisure and Fitness Studies",
                         /* 17 */ @"Philosophy and Religious Studies",
                         /* 18 */ @"Physical Sciences",
                         /* 19 */ @"Psychology",
                         /* 20 */ @"Social Sciences",
                         /* 21 */ @"Visual and Performing Arts",];
}


-(void)setImagesArray {
    
    _Images = @[@"Agriculture.jpg",
                @"Architecture.jpg",
                @"GroupStudies.jpg",
                @"Aviation.jpg",
                @"Biological.png",
                @"Business.jpg",
                @"Communication.png",
                @"ComputerScience.jpg",
                @"Education.jpg",
                @"Engineering.jpg",
                @"Language.jp2",
                @"Health.jpg",
                @"History.jpg",
                @"HumanServices.jpg",
                @"LegalStudies.jpg",
                @"Math.jpg",
                @"Sport.jpg",
                @"Religion.jpg",
                @"PhysicalSciences.jpg",
                @"Psychology.jpg",
                @"SocialSciences.jpg",
                @"PerformingArts.jpg",];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return _Majors.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MajorsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MajorsCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    //int row = [indexPath row];
    
    cell.majorLabel.text = _Majors[indexPath.row];
    cell.thumbImage.image = [UIImage imageNamed:_Images[indexPath.row]];
    
    return cell;
}

#pragma mark -
#pragma mark === Navigation ===
#pragma mark -


// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    // If you need to pass data to the next controller do it here
    
    //Preparing Segue
    
    if ([[segue identifier] isEqualToString:@"showCtg"]) {
        
        //When the identifier is named as ShowDetails, this will happen.
        //The name of the Show segue from NgoTCell to DetailVC is named ShowDetails.
        
        CategoryTableVC *ctgTableVC = [segue destinationViewController];
        
        //It will push to our DetailVC
        
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        //int row = [myIndexPath row];
        
        //Array push with the view from table cell to detailModal to detailVC
        ctgTableVC.categoryModal = @[_Majors[myIndexPath.row],];
    }
}

// Add this to perform the Show (push) segue!
//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    [self performSegueWithIdentifier:@"showCtg" sender:self];
//}


//#pragma mark - Navigation
//
//// Add this to perform the Show (push) segue!
//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    [self performSegueWithIdentifier:@"ShowTable2" sender:self];
//}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


@end

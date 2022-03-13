//
//  CategoryTableVC.m
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/13/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import "CategoryTableVC.h"
#import "CategoryCell.h"
#import "DetailVC.h"

@interface CategoryTableVC ()

@end

@implementation CategoryTableVC

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
    
    
    
    _majorLabel.title = _categoryModal[0];
    //OR USE THIS
    // Here the title of the navigation will be given as the detailModal[0] (of Array with 0 which is _Title) given in the NgoTableVC.
//    self.navigationItem.title = _detailModal[0];
    
    [self checkForCategory];
    NSLog(@"%@", _categoryModal);

}


-(void)checkForCategory{
    
    // In here, we set the informations of the label according to the cell entered using the title label string contained in the table view controller.
    
    //0
    if ([_majorLabel.title isEqualToString:@"Agriculture, Environmental, and Related Sciences"]) {
        
        _Category = @[@"Environmental Science",
                      @"ProGreen Diploma",];
        
        _Abbrev = @[@"(ENV)",
                    @"(PRGR)",];
    }
    
    
    //1
    if ([_majorLabel.title isEqualToString:@"Architecture and Related Services"]) {
        
        _Category = @[@"Architecture",
                      @"Interior Design",
                      @"Graphic Design",
                      @"Islamic Art and Architecture",];
        
        _Abbrev = @[@"(ARC)",
                    @"(DES)",
                    @"(GRA)",
                    @"(IAA)",];
    }
    
    
    //2
    if ([_majorLabel.title isEqualToString:@"Ethnic, Disciplinary, Gender, and Group Studies"]) {
        
        _Category = @[@"Conflict Analysis and Resolution",
                      @"Cultural Studies",
                      @"Ethics",
                      @"Migration Studies",
                      @"Woman and Gender Studies",
                      @"Woman Studies",];
        
        _Abbrev = @[@"(CAR)",
                    @"(CST)",
                    @"(ETH)",
                    @"(MIG)",
                    @"(WGS)",
                    @"(WOS)",];
    }
    
    
    //3
    if ([_majorLabel.title isEqualToString:@"Aviation"]) {
        
        _Category = @[@"Aviation / Flight Training (UND Aerospace)",];
        
        _Abbrev = @[@"",];
    }
    
    
    //4
    if ([_majorLabel.title isEqualToString:@"Biological and Biomedical Sciences"]) {
        
        _Category = @[@"Biochemistry",
                      @"Bioinformatics",
                      @"Biology",];
        
        _Abbrev = @[@"(BCH)",
                    @"(BIF)",
                    @"(BIO)",];
    }
    
    
    //5
    if ([_majorLabel.title isEqualToString:@"Business, Managemnet, Marketing and Related Services"]) {
        
        _Category = @[@"Accounting",
                      @"Business",
                      @"Family and Entrepreneurial Management",
                      @"Finance",
                      @"Hospitality Management",
                      @"Human Resources Management",
                      @"International Business",
                      @"Information Technology Management",
                      @"Management",
                      @"Marketing",
                      @"Operations and Production Management",
                      @"Quantitative Business Analysis",];
        
        _Abbrev = @[@"(ACC)",
                    @"(BUS)",
                    @"(FEM)",
                    @"(FIN)",
                    @"(HOM)",
                    @"(HRM)",
                    @"(IBS)",
                    @"(ITM)",
                    @"(MGT)",
                    @"(MKT)",
                    @"(OPM)",
                    @"(GBA)",];
    }
    
    
    //6
    if ([_majorLabel.title isEqualToString:@"Communication, Journalism, and Related Programs"]) {
        
        _Category = @[@"Communication Arts",
                      @"Multimedia Journalism",];
        
        _Abbrev = @[@"(COM)",
                    @"(JSC)",];
    }
    
    
    //7
    if ([_majorLabel.title isEqualToString:@"Computer and Information Sciences and Support Services"]) {
        
        _Category = @[@"Computer Science",];
        
        _Abbrev = @[@"(CSC)",];
    }
    
    
    //8
    if ([_majorLabel.title isEqualToString:@"Education"]) {
        
        _Category = @[@"Education",];
        
        _Abbrev = @[@"(EDU)",];
    }
    
    
    //9
    if ([_majorLabel.title isEqualToString:@"Engineering"]) {
        
        _Category = @[@"Civil Engineering",
                      @"Computer Engineering",
                      @"Electrical Engineering",
                      @"General Engineering",
                      @"Industrial Engineering",
                      @"Mechatronics",
                      @"Mechanical Engineering",
                      @"Petroleum Engineering",];
        
        _Abbrev = @[@"(CIE)",
                    @"(COE)",
                    @"(ELE)",
                    @"(GNE)",
                    @"(INE)",
                    @"(MCE)",
                    @"(MEE)",
                    @"(PTE)",];
    }
    
    
    //10
    if ([_majorLabel.title isEqualToString:@"Languages, Literatures, Linguistics"]) {
        
        _Category = @[@"Arabic",
                      @"Chinese",
                      @"Comparative Literature",
                      @"English",
                      @"German",
                      @"Hebrew",
                      @"Italian",
                      @"Latin",
                      @"Special Arabic",
                      @"Spanish",
                      @"Translation",];
        
        _Abbrev = @[@"(ARA)",
                    @"(CHN)",
                    @"(CLT)",
                    @"(ENG)",
                    @"(GER)",
                    @"(HEB)",
                    @"(ITA)",
                    @"(LAT)",
                    @"(SAR)",
                    @"(SPA)",
                    @"(TRA)",];
    }
    
    
    //11
    if ([_majorLabel.title isEqualToString:@"Health Professions and Related Program"]) {
        
        _Category = @[@"Health",
                      @"Nursing",
                      @"Nutrition",
                      @"Pharmacy",];
        
        _Abbrev = @[@"(HLT)",
                    @"(NUR)",
                    @"(NUT)",
                    @"(PHA)",];
    }
    
    
    //12
    if ([_majorLabel.title isEqualToString:@"History"]) {
        
        _Category = @[@"History",];
        
        _Abbrev = @[@"(HST)",];
    }
    
    
    //13
    if ([_majorLabel.title isEqualToString:@"Human Services"]) {
        
        _Category = @[@"Social Work",];
        
        _Abbrev = @[@"(SWO)",];
    }
    
    
    //14
    if ([_majorLabel.title isEqualToString:@"Legal Professions and Studies"]) {
        
        _Category = @[@"Legal Studies",
                      @"Business Law",];
        
        _Abbrev = @[@"(LEG)",
                    @"(LLM)",];
    }
    
    
    //15
    if ([_majorLabel.title isEqualToString:@"Mathematics and Statistics"]) {
        
        _Category = @[@"Mathematics",
                      @"Statistics",];
        
        _Abbrev = @[@"(MTH)",
                    @"(STA)",];
    }
    
    
    //16
    if ([_majorLabel.title isEqualToString:@"Leisure and Fitness Studies"]) {
        
        _Category = @[@"Physical Education",];
        
        _Abbrev = @[@"(PED)",];
    }
    
    
    //17
    if ([_majorLabel.title isEqualToString:@"Philosophy and Religious Studies"]) {
        
        _Category = @[@"Philosophy",
                      @"Religion",];
        
        _Abbrev = @[@"(PHL)",
                    @"(REL)",];
    }
    
    
    //18
    if ([_majorLabel.title isEqualToString:@"Physical Sciences"]) {
        
        _Category = @[@"Astronomy",
                      @"Chemistry",
                      @"Physics",];
        
        _Abbrev = @[@"(AST)",
                    @"(CHM)",
                    @"(PHY)",];
    }
    
    
    //19
    if ([_majorLabel.title isEqualToString:@"Psychology"]) {
        
        _Category = @[@"Psychology",];
        
        _Abbrev = @[@"(PSY)",];
    }
    
    
    //20
    if ([_majorLabel.title isEqualToString:@"Social Sciences"]) {
        
        _Category = @[@"Economics",
                      @"Sociology",];
        
        _Abbrev = @[@"(ECO)",
                    @"(SOC)",];
    }
    
    
    //21
    if ([_majorLabel.title isEqualToString:@"Visual and Performing Arts"]) {
        
        _Category = @[@"Fine Arts",
                      @"Fashion Design",
                      @"Music",
                      @"Performing Arts",
                      @"Photography",
                      @"TV and Film",
                      @"Visual Narrative",];
        
        _Abbrev = @[@"(ART)",
                    @"(FAS)",
                    @"(MUS)",
                    @"(PFA)",
                    @"(PHO)",
                    @"(TVF)",
                    @"(VIS)",];
    }
    
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
    return _Category.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CategoryCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.categoriesLabel.text = _Category[indexPath.row];
    cell.abbreviationLabel.text = _Abbrev[indexPath.row];
    
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
    
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        
        //When the identifier is named as ShowDetails, this will happen.
        //The name of the Show segue from NgoTCell to DetailVC is named ShowDetails.
        
        DetailVC *detailVC = [segue destinationViewController];
        
        //It will push to our DetailVC
        
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        //int row = [myIndexPath row];
        
        //Array push with the view from table cell to detailModal to detailVC
        detailVC.detailModal = @[_Category[myIndexPath.row],
                                 _Abbrev[myIndexPath.row],
                                 _majorLabel.title,];
    }
}


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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  DetailVC.m
//  Career Guidance
//
//  Created by Rayan Moarkech on 4/14/17.
//  Copyright © 2017 Rayan Moarkech. All rights reserved.
//

#import "DetailVC.h"

@interface DetailVC ()

@end

@implementation DetailVC {
    NSString *abbrev;
    NSString *question;
    NSString *description;
    NSString *courseQues;
    NSString *courses;
    NSString *jobsQues;
    NSString *jobs;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    categoryLabel.text = _detailModal[0];
    abbrev = _detailModal[1];
    //_majorLabel.text = _detailModal[2];
    
    self.navigationItem.title = @"Major";
    
    [self setInformation];
    [self setTextView];
}



-(void)setInformation {
    
#pragma mark - Agriculture, Environmental, and Related Sciences
    
    if ([categoryLabel.text isEqualToString:@"Environmental Science"]) {
        
        question = @"What is Environmental Science?";
        
        description = @"- Environmental science is an interdisciplinary academic field that integrates physical, biological and information sciences to the study of the environment, and the solution of environmental problems.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@",
                   @"•	Biology",
                   @"•	Chemistry",
                   @"•	Ecology",
                   @"•	Geology",
                   @"•	Technical Writing"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@",
                @"•	Environmental Science Teachers, Postsecondary",
                @"• Environmental Scientists and Specialists, Including Health"];
    }
    
    //Not Done
    if ([categoryLabel.text isEqualToString:@"ProGreen Diploma"]) {
        
        description = @"";
        
        courses = @"";
        
        jobs = @"";
    }
    
    
#pragma mark - Architecture and Related Services
    
    if ([categoryLabel.text isEqualToString:@"Architecture"]) {
        
        question = @"What is Architecture?";
        
        description = @"- Architecture (Latin architectura, from the Greek ἀρχιτέκτων arkhitekton \"architect\", from ἀρχι- \"chief\" and τέκτων \"builder\") is both the process and the product of planning, designing, and constructing buildings and other physical structures. Architectural works, in the material form of buildings, are often perceived as cultural symbols and as works of art. Historical civilizations are often identified with their surviving architectural achievements.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",
                   @"•	3D Modeling",
                   @"•	Drafting",
                   @"•	Engineering",
                   @"•	Mathematics",
                   @"•	Physics",
                   @"•	Working Drawings"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@\n%@",
                @"•	Architects, Except Landscape and Naval",
                @"•	Architectural and Engineering Managers",
                @"• Architecture Teachers, Postsecondary"];
    }
    
    if ([categoryLabel.text isEqualToString:@"Interior Design"]) {
        
        question = @"What is Interior Design?";
        
        description = @"- Interior design is the art and science of understanding people's behavior to create functional spaces within a building. Decoration is the furnishing or adorning of a space with fashionable or beautiful things. In short, interior designers may decorate, but decorators do not design.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@",
                   @"•	Computer Aided Drafting and Design",
                   @"•	Contract Interior Design",
                   @"•	History of Interiors and Furniture",
                   @"•	Interior Design",
                   @"•	Interior Design Graphics",
                   @"•	Interior Design Professional Practice",
                   @"•	Interior Lighting Design",
                   @"•	Interior Structures and Materials",
                   @"•	Residential Interior Design",
                   @"•	Space Planning"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@",
                @"•	Architecture Teachers, Postsecondary",
                @"•	Interior Designers"];
    }
    
    if ([categoryLabel.text isEqualToString:@"Graphic Design"]) {
        
        question = @"What is Graphic Design?";
        
        description = @"- Graphic design is the process of visual communication and problem-solving using one or more of typography, photography and illustration. The field is considered a subset of visual communication and communication design, but sometimes the term \"graphic design\" is used synonymously. Graphic designers create and combine symbols, images and text to form visual representations of ideas and messages. They use typography, visual arts and page layout techniques to create visual compositions. Common uses of graphic design include corporate design (logos and branding), editorial design (magazines, newspapers and books), wayfinding or environmental design, advertising, web design, communication design, product packaging and signage.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@",
                   @"•	3D Graphics",
                   @"•	Animation",
                   @"•	Art",
                   @"•	Computer Aided Design",
                   @"•	Drawing",
                   @"•	Photography",
                   @"•	Web Design"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@",
                @"•	Art Directors",
                @"•	Art, Drama, and Music Teachers, Postsecondary",
                @"•	Artists and Related Workers",
                @"•	Graphic Designers",
                @"•	Multimedia Artists and Animators"];
    }
    
    //Not done
    if ([categoryLabel.text isEqualToString:@"Islamic Art and Architecture"]) {
        
        question = @"What is Islamic Art and Architecture?";
        
        description = @"- Islamic art is a modern concept created by art historians in the 19th century to facilitate categorization and study of the material first produced under the Islamic peoples that emerged from Arabia in the seventh century. Today, the term Islamic art describes all of the arts that were produced in the lands where Islam was the dominant religion or the religion of those who ruled. Unlike the terms Christian art, Jewish art, and Buddhist art—which refer only to religious art of these faiths—the term Islamic art is not used merely to describe religious art or architecture but applies to all art forms produced in the Islamic world.";
        
        courses = @"";
        
        jobs = @"";
    }
    
    //Skipped Ethnic... category
 
    
#pragma mark - Aviation
    
    if ([categoryLabel.text isEqualToString:@"Aviation / Flight Training (UND Aerospace)"]) {
        
        question = @"What is Aviation / Flight Training";
        
        description = @"- A program that focuses on the general study of aviation and the aviation industry, including in-flight and ground support operations. Includes instruction in the technical, business, and general aspects of air transportation systems.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@",
                   @"•	Engineering",
                   @"•	Math",
                   @"•	Physics",
                   @"•	Technical Writing"];
        
        jobs = [NSString stringWithFormat:@"%@",
                @"•	Transportation, Storage, and Distribution Managers"];
    }
    
    
#pragma mark - Biological and Biomedical Sciences
    
    if ([categoryLabel.text isEqualToString:@"Biochemistry"]) {
        
        question = @"What is Biochemistry";
        
        description = @"- Biochemistry is the branch of science that explores the chemical processes within and related to living organisms. It is a laboratory based science that brings together biology and chemistry. By using chemical knowledge and techniques, biochemists can understand and solve biological problems.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",
                   @"•	Biochemistry",
                   @"•	Chemistry",
                   @"•	Foreign Language",
                   @"•	Microbiology",
                   @"•	Molecular Genetics",
                   @"•	Physical Chemistry"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@\n%@\n%@",
                @"•	Biochemists and Biophysicists",
                @"•	Biological Science Teachers, Postsecondary",
                @"•	Medical Scientists, Except Epidemiologists",
                @"•	Natural Sciences Managers"];
    }
    
    if ([categoryLabel.text isEqualToString:@"Bioinformatics"]) {
        
        question = @"What is Bioinformatics?";
        
        description = @"- Bioinformatics is an interdisciplinary field that develops methods and software tools for understanding biological data. As an interdisciplinary field of science, bioinformatics combines computer science, statistics, mathematics, and engineering to analyze and interpret biological data.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@",
                  @"•	Biochemistry",
                  @"•	Biology",
                  @"•	Chemistry",
                  @"•	Genetics",
                  @"•	Mathematics",
                  @"•	Microbiology",
                  @"•	Organic Chemistry",
                  @"•	Physics"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@\n%@",
                @"•	Computer and Information Research Scientists",
                @"•	Computer Occupations",
                @"•	Software Developers, Applications"];
    }
    
    if ([categoryLabel.text isEqualToString:@"Biology"]) {
        
        question = @"What is Biology?";
        
        description = @"- Biology is a natural science concerned with the study of life and living organisms, including their structure, function, growth, evolution, distribution, identification and taxonomy.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@%@\n%@\n%@\n%@",
                   @"•	Physiology",
                   @"•	Animal Biology",
                   @"•	Behavior",
                   @"•	Biochemistry",
                   @"•	Biotechnology",
                   @"•	Botany",
                   @"•	Cell Biology",
                   @"•	Chemistry",
                   @"•	Ecology",
                   @"•	Embryonic Development",
                   @"•	Evolution",
                   @"•	Genetics",
                   @"•	Immunology",
                   @"•	Marine Biology",
                   @"•	Neurobiology",
                   @"•	Parasitology"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@",
                @"•	Biochemists and Biophysicists",
                @"•	Biological Science Teachers, Postsecondary",
                @"•	Biological Scientists",
                @"•	Epidemiologists",
                @"•	Health Specialties Teachers, Postsecondary",
                @"•	Life Scientists",
                @"•	Medical Scientists, Except Epidemiologists",
                @"•	Microbiologists",
                @"•	Natural Sciences Managers",
                @"•	Secondary School Teachers, Except Special and Career/Technical Education",
                @"•	Zoologists and Wildlife Biologists"];
    }
    
    
#pragma  mark - Business, Management, Marketing, and Related Services
    
    if ([categoryLabel.text isEqualToString:@"Accounting"]) {
        
        question = @"What is Accounting?";
        
        description = @"- Accounting or accountancy is the measurement, processing and communication of financial information about economic entities such as businesses and corporations.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@",
                   @"•	Accounting Info. Systems",
                   @"•	Auditing",
                   @"•	Computer Info. Systems",
                   @"•	Cost Accounting",
                   @"•	Economics",
                   @"•	Finance",
                   @"•	Government Accounting Management",
                   @"•	Marketing"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",
                @"•	Accountants and Auditors",
                @"•	Budget Analysts",
                @"•	Business Teachers, Postsecondary",
                @"•	Credit Analysts",
                @"•	Financial Examiners",
                @"•	Tax Examiners and Collectors, and Revenue Agent"];
    }
    
    //Not Done
    if ([categoryLabel.text isEqualToString:@"Business"]) {
        
        question = @"Whats is a Business?";
        
        description = @"- A business (also known as an enterprise, a company, or a firm) is an organizational entity involved in the provision of goods and services to consumers. Businesses serve as a form of economic activity, and are prevalent in capitalist economies, where most of them are privately owned and provide goods and services allocated through a market to consumers and customers in exchange for other goods, services, money, or other forms of exchange that hold intrinsic economic value.";
        
        courses = @"";
        
        jobs = @"";
    }
    
    if ([categoryLabel.text isEqualToString:@"Family and Entrepreneurial Management"]) {
        
        question = @"What is Family and Entrepreneurial Management?";
        
        description = @"- A program that generally prepares individuals to perform development, marketing and management functions associated with owning and operating a business.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@",
                   @"•	Accounting",
                   @"•	Economics",
                   @"•	Finance",
                   @"•	Law",
                   @"•	Management",
                   @"•	Marketing",
                   @"•	Software Applications",
                   @"•	Statistics"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@",
                @"• Accountants and Auditors",
                @"• Administrative Services Managers",
                @"• Agents and Business Managers of Artists, Performers, and Athletes",
                @"• Bill and Account Collectors",
                @"• Bookkeeping, Accounting, and Auditing Clerks",
                @"• Brokerage Clerks",
                @"• Budget Analysts",
                @"• Business Teachers, Postsecondary",
                @"• Cargo and Freight Agents",
                @"• Chief Executives",
                @"• Computer and Information Systems Managers",
                @"• Construction Managers",
                @"• Cost Estimators",
                @"• Credit Analysts",
                @"• Credit Authorizers, Checkers, and Clerks",
                @"• Credit Counselors",
                @"• Customer Service Representatives",
                @"• Data Entry Keyers",
                @"• Dispatchers, Except Police, Fire, and Ambulance",
                @"• Economics Teachers, Postsecondary",
                @"• Economists",
                @"• Editors",
                @"• Executive Secretaries and Executive Administrative Assistants",
                @"• Financial Analysts",
                @"• Financial Examiners",
                @"• Financial Managers",
                @"• Financial Specialists, All Other",
                @"• First-Line Supervisors of Mechanics, Installers, and Repairers",
                @"• First-Line Supervisors of Office and Administrative Support Workers",
                @"• First-Line Supervisors of Production and Operating Workers",
                @"• First-Line Supervisors of Retail Sales Workers",
                @"• Food Service Managers",
                @"• Gaming Managers",
                @"• Gaming Supervisors",
                @"• General and Operations Managers",
                @"• Industrial Production Managers",
                @"• Insurance Claims and Policy Processing Clerks",
                @"• Loan Interviewers and Clerks",
                @"• Loan Officers",
                @"• Lodging Managers",
                @"• Logisticians",
                @"• Management Analysts",
                @"• Managers, All Other",
                @"• Meeting, Convention, and Event Planners",
                @"• Natural Sciences Managers",
                @"• New Accounts Clerks",
                @"• Office Clerks, General",
                @"• Payroll and Timekeeping Clerks",
                @"• Personal Financial Advisors",
                @"• Procurement Clerks",
                @"• Production, Planning, and Expediting Clerks",
                @"• Purchasing Managers",
                @"• Receptionists and Information Clerks",
                @"• Sales Managers",
                @"• Secretaries and Administrative Assistants, Except Legal, Medical, and Executive",
                @"• Securities, Commodities, and Financial Services Sales Agents",
                @"• Slot Supervisors",
                @"• Social and Community Service Managers",
                @"• Statistical Assistants",
                @"• Survey Researchers",
                @"• Tax Examiners and Collectors, and Revenue Agents",
                @"• Tax Preparers",
                @"• Technical Writers",
                @"• Tellers",
                @"• Transportation, Storage, and Distribution Managers",
                @"• Travel Guides",
                @"• Word Processors and Typists",
                @"• Writers and Authors"];
    }
    
    if ([categoryLabel.text isEqualToString:@"Finance"]) {
        
        question = @"What is Finance?";
        
        description = @"- Finance is a field that deals with the study of investments. It includes the dynamics of assets and liabilities over time under conditions of different degrees of uncertainty and risk. Finance can also be defined as the science of money management. Finance aims to price assets based on their risk level and their expected rate of return.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n",
                   @"• Bonds",
                   @"• Core Business Courses",
                   @"• Corporate Finance",
                   @"• Econometrics",
                   @"• Economics",
                   @"• Financial Reporting",
                   @"• Governmental Finance",
                   @"• Individual Investment",
                   @"• Monetary Institutions and Policy",
                   @"• Statistics"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@",
                @"• Budget Analysts",
                @"• Business Teachers, Postsecondary",
                @"• Chief Executives",
                @"• Credit Analysts",
                @"• Financial Analysts",
                @"• Financial Managers",
                @"• Financial Specialists, All Other",
                @"• General and Operations Managers",
                @"• Loan Officers",
                @"• Personal Financial Advisors"];
    }
    
    if ([categoryLabel.text isEqualToString:@"Hospitality Management"]) {
        
        question = @"What is Hospitality Management?";
        
        description = @"- Hospitality management is the study of the hospitality industry. Hospitality management covers hotels, restaurants, cruise ships, amusement parks, destination marketing organizations, convention centers, and country clubs.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@",
                   @"• Accounting",
                   @"• Business Law",
                   @"• Economics",
                   @"• Event Planning",
                   @"• Management",
                   @"• Marketing",
                   @"• Statistics"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@",
                @"• Food Service Managers",
                @"• Lodging Managers"];
    }
    
    if ([categoryLabel.text isEqualToString:@"International Business"]) {
        
        question = @"What is International Business?";
        
        description = @"- International business comprises all commercial transactions (private and governmental, sales, investments, logistics, and transportation) that take place between two or more regions, countries and nations beyond their political boundaries.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",
                   @"• Foreign Market Analysis",
                   @"• International Banking",
                   @"• International Business",
                   @"• International Business Finance",
                   @"• International Marketing Management",
                   @"• International Monetary & Financial Issues"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@\n%@",
                @"• Business Teachers, Postsecondary",
                @"• Chief Executives",
                @"• General and Operations Managers"];
    }
    
    if ([categoryLabel.text isEqualToString:@"Information Technology Management"]) {
        
        question = @"What is Information Technology Management?";
        
        description = @"- IT management is the discipline whereby all of the information technology resources of a firm are managed in accordance with its needs and priorities. These resources may include tangible investments like computer hardware, software, data, networks and data centre facilities, as well as the staff who are hired to maintain them. Managing this responsibility within a company entails many of the basic management functions, like budgeting, staffing, change management, and organizing and controlling, along with other aspects that are unique to technology, like software design, network planning, tech support etc.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",
                   @"• Computational Science",
                   @"• Computer Applications",
                   @"• Computer Development",
                   @"• Computer Programming",
                   @"• Mathematics",
                   @"• Statistics"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@",
                @"• Computer and Information Systems Managers",
                @"• Computer Network Architects",
                @"• Computer Network Support Specialists",
                @"• Computer Occupations, All Other",
                @"• Computer User Support Specialists",
                @"• Database Administrators",
                @"• Information Security Analysts",
                @"• Managers, All Other",
                @"• Network and Computer Systems Administrators",
                @"• Web Developers"];
    }
    
    //Not Done
    if ([categoryLabel.text isEqualToString:@"Management"]) {
        
        description = @"";
        
        courses = @"";
        
        jobs = @"";
    }
    
    if ([categoryLabel.text isEqualToString:@"Marketing"]) {
        
        question = @"What is Marketing?";
        
        description = @"- Marketing is the study and management of exchange relationships. Marketing is used to create the customer, to keep the customer and to satisfy the customer.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@",
                   @"• Business to Business Marketing",
                   @"• Consumer Behavior",
                   @"• Corporate Finance",
                   @"• Global Marketing",
                   @"• Logistics Strategies",
                   @"• Marketing Channels",
                   @"• Marketing Management",
                   @"• Marketing Research",
                   @"• Marketing Strategy",
                   @"• Product and Price Management",
                   @"• Retail Management",
                   @"• Sales Management"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@",
                @"• Advertising and Promotions Managers",
                @"• Business Teachers, Postsecondary",
                @"• Market Research Analysts and Marketing Specialists",
                @"• Marketing Managers",
                @"• Sales Managers"];
    }
    
    //Not Done
    if ([categoryLabel.text isEqualToString:@"Operations and Production Management"]) {
        
        question = @"What is Operations and Production Management?";
        
        description = @"- Production and operations management talks about applying business organization and management concepts in creation of goods and services.";
        
        courses = @"";
        
        jobs = @"";
    }
    
    //Not Done
    if ([categoryLabel.text isEqualToString:@"Quantitative Business Analysis"]) {
        
        question = @"What is Quantitative Business Analysis?";
        
        description = @"- Quantitative analysis refers to economic, business or financial analysis that aims to understand or predict behavior or events through the use of mathematical measurements and calculations, statistical modeling and research. Quantitative analysts aim to represent a given reality in terms of a numerical value. Quantitative analysis is employed for a number of reasons, including measurement, performance evaluation or valuation of a financial instrument, and predicting real world events such as changes in a country's gross domestic product (GDP) growth rate.";
        
        courses = @"";
        
        jobs = @"";
    }
    
    //Skipped Communication category
    //Skipped Computer and Information... category
    //Skipped Education
    
#pragma mark - Engineering Category
    
    if ([categoryLabel.text isEqualToString:@"Civil Engineering"]) {
        
        question = @"What is Civil Engineering?";
        
        description = @"- Civil engineering is a professional engineering discipline that deals with the design, construction, and maintenance of the physical and naturally built environment, including works like roads, bridges, canals, dams, and buildings.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@",
                   @"• Bridge Engineering",
                   @"• Civil Engineering",
                   @"• Computer Programming",
                   @"• Construction Management",
                   @"• Construction Materials",
                   @"• Construction Safety",
                   @"• Earthquake Engineering",
                   @"• Engineering Economy",
                   @"• Engineering Hydrology",
                   @"• Engineering Measurements",
                   @"• Environmental Chemistry",
                   @"• Environmental Law",
                   @"• Environmental Microbiology",
                   @"• Geotechnical Engineering",
                   @"• Graphics",
                   @"• Highway & Transportation Engineering",
                   @"• Hydraulics",
                   @"• Pavement Design",
                   @"• Project Scheduling",
                   @"• Statistics Engineering",
                   @"• Timber Structures",
                   @"• Urban Engineering",
                   @"• Water and Waste Treatment",
                   @"• Water Rights"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@\n%@",
                @"• Architectural and Engineering Managers",
                @"• Civil Engineers",
                @"• Engineering Teachers, Postsecondary"];
    }
    
    if ([categoryLabel.text isEqualToString:@"Computer Engineering"]) {
        
        question = @"What is Computer Engineering";
        
        description = @"- Computer engineering is a discipline that integrates several fields of electrical engineering and computer science required to develop computer hardware and software. Computer engineers usually have training in electronic engineering (or electrical engineering), software design, and hardware-software integration instead of only software engineering or electronic engineering. Computer engineers are involved in many hardware and software aspects of computing, from the design of individual microcontrollers, microprocessors, personal computers, and supercomputers, to circuit design. This field of engineering not only focuses on how computer systems themselves work, but also how they integrate into the larger picture.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@",
                   @"• Computer Architecture",
                   @"• Computer Assisted Design",
                   @"• Computer Communications",
                   @"• Computer Organization",
                   @"• Digital Imaging",
                   @"• Digital Systems",
                   @"• Electric Circuits",
                   @"• Electromechanics",
                   @"• Programming"];
        
        jobs = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@",
                @"• Architectural and Engineering Managers",
                @"• Computer Hardware Engineers",
                @"• Computer Network Architects",
                @"• Engineering Teachers, Postsecondary",
                @"• Software Developers, Applications",
                @"• Software Developers, Systems Software"];
    }
    
    if ([categoryLabel.text isEqualToString:@"Electrical Engineering"]) {
        
        question = @"What is Electrical Engineering?";
        
        description = @"Electrical engineering is a field of engineering that generally deals with the study and application of electricity, electronics, and electromagnetism.";
        
        courses = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@",
                   @"• Calculus",
                   @"• Chemistry",
                   @"• Digital Communications",
                   @"• Electrical Networks",
                   @"• Geometry",
                   @"• Physics",
                   @"• Semiconductor Devices",
                   @"• Statistics"];
        
        jobs = [NSString stringWithFormat:@"%@",
                @"• Electrical and Electronics Engineering Technicians"];
    }
    
    //Not Done
    if ([categoryLabel.text isEqualToString:@"General Engineering"]) {
        
        question = @"What is General Engineering?";
        
        description = @"General engineering is a broad term that covers a variety of different types of engineering. General engineering is a comprehensive approach to the subject matter, meaning students that come out of this career have an opportunity to develop large buildings and bridges, or create beauty products and airplanes.";
        
        courses = @"";
        
        jobs = [NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@",
                @"• Aerospace Engineers",
                @"• Agricultural Engineers",
                @"• Architectural and Engineering Managers",
                @"• Architecture Teachers, Postsecondary",
                @"• Biomedical Engineers",
                @"• Chemical Engineers",
                @"• Civil Engineers",
                @"• Computer Hardware Engineers",
                @"• Computer Network Architects",
                @"• Engineering Teachers, Postsecondary",
                @"• Engineers, All Other",
                @"• Environmental Engineers",
                @"• Materials Engineers",
                @"• Mining and Geological Engineers, Including Mining Safety Engineers",
                @"• Petroleum Engineers",
                @"• Software Developers, Applications",
                @"• Software Developers, Systems Software"];
    }
}

-(void)setTextView {
    
    if ([courses isEqualToString:@""]) {
        courseQues = @"";
    } else {
        courseQues = @"What Courses do this major take?";
    }
    
    if ([jobs isEqualToString:@""]) {
        jobsQues = @"";
    } else {
        jobsQues = @"Jobs and Careers associated with this major:";
    }
    
    detailText.text = [NSString stringWithFormat:@"%@\n%@\n\n%@\n%@\n\n%@\n%@",
                       question,
                       description,
                       courseQues,
                       courses,
                       jobsQues,
                       jobs];
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

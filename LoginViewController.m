//
//  LoginViewController.m
//  B-TechStudies
//
//  Created by MAC on 20/01/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    // Do any additional setup after loading the view from its nib.
}
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    cell.backgroundColor=[UIColor clearColor];
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"details";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
    if (indexPath.row == 0) {
        self.nameTF=[[UITextField alloc]initWithFrame:CGRectMake(200, 10, 200, 40)];
         self.nameTF.borderStyle=UITextBorderStyleRoundedRect;
        self.nameTF.backgroundColor=[UIColor grayColor];
        [cell addSubview:self.nameTF];
        cell.textLabel.text=@"Name:";
        
    }
    if (indexPath.row == 1) {
        self.passwordTF=[[UITextField alloc]initWithFrame:CGRectMake(200, 10, 200, 40)];
         self.passwordTF.borderStyle=UITextBorderStyleRoundedRect;
        self.passwordTF.backgroundColor=[UIColor grayColor];
        [cell addSubview:self.passwordTF];
        cell.textLabel.text=@"Password:";
        
    }
    if (indexPath.row == 2) {
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self
                   action:@selector(aMethod)
         forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:@"Submit" forState:UIControlStateNormal];
        button.frame = CGRectMake(150, 15, 90, 20);
        [cell addSubview:button];
    }
    if (indexPath.row == 3) {
        UIButton *facebook=[[UIButton alloc]initWithFrame:CGRectMake(100,15, 60, 30)];
        [facebook addTarget:self
                        action:@selector(facebook) forControlEvents:UIControlEventTouchDown];
        [facebook setImage:[UIImage imageNamed:@"facebook.png"] forState:UIControlStateNormal];
         [cell addSubview:facebook];
        
        UIButton *twitter=[[UIButton alloc]initWithFrame:CGRectMake(200,15, 60, 30)];
        [twitter addTarget:self
                     action:@selector(twitter) forControlEvents:UIControlEventTouchDown];
        [twitter setImage:[UIImage imageNamed:@"twitter.png"] forState:UIControlStateNormal];
         [cell addSubview:twitter];
    }
    
    return cell;
}
-(void)facebook{
    
    
}
-(void)twitter{
   
    
}
-(void)aMethod{
    BooksListViewController *booksListViewController=[[BooksListViewController alloc]init];
    
    [self.navigationController pushViewController:booksListViewController animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

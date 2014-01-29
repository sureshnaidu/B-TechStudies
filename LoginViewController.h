//
//  LoginViewController.h
//  B-TechStudies
//
//  Created by MAC on 20/01/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BooksListViewController.h"

@interface LoginViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) UITextField *nameTF;
@property (strong, nonatomic) UITextField *passwordTF;
@end

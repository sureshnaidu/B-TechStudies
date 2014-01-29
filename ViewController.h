//
//  ViewController.h
//  B-TechStudies
//
//  Created by MAC on 20/01/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewController.h"
@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource>{
    
    UIToolbar *toolbar;
    
    UIPickerView *picker;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) UITextField *nameTF;
@property (strong, nonatomic) UITextField *emailTF;
@property (strong, nonatomic) UITextField *passwordTF;
@property (strong, nonatomic) UITextField *adminNumderTF;
@property (strong, nonatomic) UITextField *countryTF;
@property (strong, nonatomic) UITextField *stateTF;
@property (strong, nonatomic) UITextField *syllabusTF;
- (IBAction)submit:(id)sender;
- (IBAction)cancel:(id)sender;
@end

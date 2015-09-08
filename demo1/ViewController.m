//
//  ViewController.m
//  demo1
//
//  Created by china on 15/9/8.
//  Copyright (c) 2015年 china. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL) validatePassword:(NSString *)passWord

{
    NSString *passWordRegex = @"^[a-zA-Z]\\w{7,19}$";
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",passWordRegex];
    return [passWordPredicate evaluateWithObject:passWord];
}


- (IBAction)click:(id)sender {
    
    
    if ([self validatePassword:self.textField.text] ) {
        
    
        NSLog(@"yes 成功%@",self.textField.text);
        
        
    }else{
    
        NSLog(@"no 失败%@",self.textField.text);

    }
    
    
}
@end

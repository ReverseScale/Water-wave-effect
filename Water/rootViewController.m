//
//  rootViewController.m
//  Water
//
//  Created by Stephen on 15/11/2.
//  Copyright © 2015年 Stephen. All rights reserved.
//

#import "rootViewController.h"
#import "Water.h"
@interface rootViewController ()

@end

@implementation rootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    Water *water = [[Water alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:water];
    
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

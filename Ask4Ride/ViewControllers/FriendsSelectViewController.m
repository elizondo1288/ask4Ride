//
//  FriendsSelectViewController.m
//  Ask4Ride
//
//  Created by Esteban Mac on 18/7/15.
//  Copyright (c) 2015 OM. All rights reserved.
//

#import "FriendsSelectViewController.h"

@interface FriendsSelectViewController ()

@end

@implementation FriendsSelectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goBack:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
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

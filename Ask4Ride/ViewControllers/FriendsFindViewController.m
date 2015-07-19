//
//  FriendsFindViewController.m
//  Ask4Ride
//
//  Created by Esteban Mac on 18/7/15.
//  Copyright (c) 2015 OM. All rights reserved.
//

#import "FriendsFindViewController.h"

@interface FriendsFindViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblSearchCriteria;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerCriteria;

@property (strong, nonatomic) NSArray * pickerOptions;
@end

@implementation FriendsFindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pickerOptions = @[@"NICKNAME",@"EMAIL",@"TELEPHONE"];
    
    self.pickerCriteria.delegate = self;
    self.pickerCriteria.dataSource = self;

    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    [self.pickerCriteria reloadAllComponents];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goBack:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)syncFriends:(id)sender {
    [self performSegueWithIdentifier:@"FindToSelect" sender:self];
}

- (IBAction)search4Friend:(id)sender {
    [self performSegueWithIdentifier:@"FindToSelect" sender:self];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.pickerOptions.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self.pickerOptions[row];
}

// Catpure the picker view selection
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    self.lblSearchCriteria.text = self.pickerOptions[row];
}

- (NSAttributedString *)pickerView:(UIPickerView *)pickerView
             attributedTitleForRow:(NSInteger)row
                      forComponent:(NSInteger)component
{
    return [[NSAttributedString alloc] initWithString:self.pickerOptions[row]
                                           attributes:@
            {
            NSForegroundColorAttributeName:[UIColor whiteColor]
            }];
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

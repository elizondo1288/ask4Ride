//
//  HeroViewController.m
//  Ask4Ride
//
//  Created by Esteban Mac on 15/7/15.
//  Copyright (c) 2015 OM. All rights reserved.
//

#import "HeroViewController.h"
#import "RideCollectionViewCell.h"
#import <QuartzCore/QuartzCore.h>

@interface HeroViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionRides;

@end

@implementation HeroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    
    [self.collectionRides reloadData];
}

- (void) viewWillAppear:(BOOL)animated{
    self.collectionRides.dataSource = self;
    self.collectionRides.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Collection View

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView*)collectionView {
    // _data is a class member variable that contains one array per section.
    return 1;
}

- (NSInteger)collectionView:(UICollectionView*)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    RideCollectionViewCell * cell = [self.collectionRides dequeueReusableCellWithReuseIdentifier:@"rideCell" forIndexPath:indexPath];
    /*
    
    NSString * imageName = [self.searchResults objectAtIndex:indexPath.row];
    
    UIImage * imagep = [UIImage imageNamed:imageName];
    [imgCell.imgPhoto setImage:imagep];
    [imgCell.lblName setText:imageName];
     */
    
    cell.lblUser.text = @"teban051288";
    cell.lblSubject.text = @"Alguien en chepe? necesito ride!!!";
    cell.lblOffer.text = @"5 tejas y una coca";
    cell.layer.borderWidth=1.0f;
    cell.layer.borderColor = [UIColor colorWithRed:(40/255) green:(61/255) blue:(116/255) alpha:1.0].CGColor;
    cell.layer.masksToBounds = NO;
    cell.layer.cornerRadius = 8; // if you like rounded corners
    /*cell.layer.shadowOffset = CGSizeMake(5, 5);
    cell.layer.shadowRadius = 2;
    cell.layer.shadowOpacity = 0.3;*/
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    //NSString * imageString = [self.searchResults objectAtIndex:indexPath.row];
    
    
}

- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell
    forItemAtIndexPath:(NSIndexPath *)indexPath{
    
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

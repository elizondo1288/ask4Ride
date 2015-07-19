//
//  HomeViewController.m
//  Ask4Ride
//
//  Created by Esteban Mac on 13/7/15.
//  Copyright (c) 2015 OM. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *welcomeView;
@property (weak, nonatomic) IBOutlet UIPageControl *welcomePageControl;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *goAheadBottonConstrain;
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;
@property (weak, nonatomic) IBOutlet UIButton *btnSignup;
@property (weak, nonatomic) IBOutlet UIButton *btnGoAhead;

@end

@implementation HomeViewController

int PAGE = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UISwipeGestureRecognizer * swipeRightGesture = [[UISwipeGestureRecognizer alloc]
                                                    initWithTarget:self action:@selector(swipeRight)];
    swipeRightGesture.direction = UISwipeGestureRecognizerDirectionRight;
    
    
    UISwipeGestureRecognizer * swipeRightGesture2 = [[UISwipeGestureRecognizer alloc]
                                                     initWithTarget:self action:@selector(swipeLeft)];
    swipeRightGesture2.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [self.welcomeView addGestureRecognizer:swipeRightGesture];
    [self.welcomeView addGestureRecognizer:swipeRightGesture2];
    
    
}

- (void) viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    [self.btnLogin setHidden:YES];
    [self.btnSignup setHidden:YES];
    self.goAheadBottonConstrain.constant = 56;
    //[self.btnGoAhead setNeedsUpdateConstraints];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)swipeRight{
    
    if (PAGE > 0) {
        [UIView transitionWithView:self.view
                          duration:0.2f
                           options:UIViewAnimationOptionTransitionCrossDissolve
                        animations:^{
                            self.welcomeView.image = [UIImage imageNamed:@"example1.png"];
                        } completion:^(BOOL finished) {
                            PAGE --;
                            self.welcomePageControl.currentPage = PAGE;
                        } ];
    }
}

- (void)swipeLeft {
    
    if (PAGE < 1) {
        
    [UIView transitionWithView:self.view
                      duration:0.2f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        self.welcomeView.image = [UIImage imageNamed:@"example2.png"];
                    } completion:^(BOOL finished) {
                        PAGE ++;
                        self.welcomePageControl.currentPage = PAGE;
                    } ];
    }
}


- (IBAction)goAhead:(id)sender {
    [self performSegueWithIdentifier:@"WelcomeToHome" sender:self];
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

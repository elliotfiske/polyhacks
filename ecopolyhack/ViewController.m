//
//  ViewController.m
//  ecopolyhack
//
//  Created by Elliot Fiske on 1/14/17.
//  Copyright © 2017 Elliot Fiske. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;

@end

@implementation ViewController

- (IBAction)touchDownFacebook:(UIView *)fbButton {
   [UIView animateWithDuration:0.1
                         delay:0
                       options:UIViewAnimationOptionCurveEaseIn animations:^{
                          fbButton.transform = CGAffineTransformMakeScale(1.15,1.15);
                          fbButton.backgroundColor = [UIColor brownColor];
                       } completion:nil];

}

- (IBAction)touchUpFacebook:(UIView *)fbButton {
   [UIView animateWithDuration:0.18
                         delay:0
                       options:UIViewAnimationOptionCurveEaseIn animations:^{
                          fbButton.transform = CGAffineTransformMakeScale(0.001,0.001);
                          fbButton.backgroundColor = [UIColor brownColor];
                       } completion:^(BOOL finished){
                          
                          
                       }];
   
//   [UIView animateWithDuration: (CGFloat) 0.15 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
//      spinner.transform = CGAffineTransformMakeScale(2.0, 2.0)
//   } completion:completion:^(BOOL finished){
//      
//      
//   }];
   
}


- (void)viewDidLoad {
   [super viewDidLoad];
   // Do any additional setup after loading the view, typically from a nib.
   self.spinner.transform = CGAffineTransformMakeScale(0.001,0.001);
   
}

- (void)didReceiveMemoryWarning {
   [super didReceiveMemoryWarning];
   // Dispose of any resources that can be recreated.
}



@end

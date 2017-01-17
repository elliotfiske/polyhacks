//
//  ahahahahahaViewController.m
//  ecopolyhack
//
//  Created by Myra Lukens on 1/14/17.
//  Copyright © 2017 Elliot Fiske. All rights reserved.
//

#import "ahahahahahaViewController.h"

@interface ahahahahahaViewController ()

@end

@implementation ahahahahahaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)byebye:(id)sender {
//  [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];

  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Challenges" bundle:nil];
  UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"tabMaster"];

  [vc setModalTransitionStyle:UIModalPresentationPopover];
  [self presentViewController:vc animated:YES completion:nil];
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

//
//  CameraViewController.m
//  ecopolyhack
//
//  Created by Elliot Fiske on 1/14/17.
//  Copyright © 2017 Elliot Fiske. All rights reserved.
//

#import "CameraViewController.h"

@interface CameraViewController ()

@end

@implementation CameraViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
   
   UIImage *btnImage = [UIImage imageNamed:@"../circle.png"];
   UIButton *imageButton = [UIButton buttonWithType:UIButtonTypeSystem];
   [imageButton setImage:btnImage forState:UIControlStateNormal];
   imageButton.frame = CGRectMake(100, 100, 100, 100);//Set your own frame
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

   - (IBAction)takePhoto:(UIButton *)sender {
      UIImagePickerController *picker = [[UIImagePickerController alloc] init];
      picker.allowsEditing = YES;
      picker.sourceType = UIImagePickerControllerSourceTypeCamera;
      
      [self presentViewController:picker animated:YES completion:NULL];
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

//
//  OnboardingViewController.m
//  ecopolyhack
//
//  Created by Myra Lukens on 1/14/17.
//  Copyright © 2017 Elliot Fiske. All rights reserved.
//

#import "OnboardingViewController.h"

@interface OnboardingViewController ()

@property (nonatomic, retain) NSArray *pages;

@end

@implementation OnboardingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
  self.delegate = self;
  self.dataSource = self;


  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];

  UIViewController *page1 = [storyboard instantiateViewControllerWithIdentifier:@"onboard1"];
  UIViewController *page2 = [storyboard instantiateViewControllerWithIdentifier:@"onboard2"];
  UIViewController *page3 = [storyboard instantiateViewControllerWithIdentifier:@"onboard3"];

  self.pages = [[NSArray alloc] initWithObjects:page1, page2, page3, nil];

  [self setViewControllers:@[page1] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:^(BOOL finished) {

  }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {

  NSUInteger prevIndex = [self.pages indexOfObject:viewController];

  if (prevIndex == NSNotFound) {
    printf("UHH OH");
    return self.pages[0];
  }
  else {
    if (prevIndex + 1 == self.pages.count) {
      return nil;
    }
    else {
      return self.pages[prevIndex + 1];;
    }
  }
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
  NSUInteger prevIndex = [self.pages indexOfObject:viewController];

  if (prevIndex == NSNotFound) {
    printf("UHH OH");
    return self.pages[0];
  }
  else {
    if (prevIndex == 0) {
      return nil;
    }
    else {
      return self.pages[prevIndex - 1];
    }
  }
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
  // The number of items reflected in the page indicator.
  return 3;
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

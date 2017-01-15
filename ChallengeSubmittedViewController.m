//
//  ChallengeSubmittedViewController.m
//  ecopolyhack
//
//  Created by Elliot Fiske on 1/14/17.
//  Copyright © 2017 Elliot Fiske. All rights reserved.
//

#import "ChallengeSubmittedViewController.h"

@interface ChallengeSubmittedViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *medal;
@property (weak, nonatomic) IBOutlet UIImageView *background;

@end

@implementation ChallengeSubmittedViewController

- (IBAction)leave:(id)sender {
  [self.presentingViewController.presentingViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  self.medal.transform=CGAffineTransformMakeScale(0.2f, 0.2f);
  double delayInSeconds = 0.1;
  dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
  dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
    [self bounceMedal];
    [self runSpinAnimationOnView:self.background duration:50.0f rotations:0.1f repeat:500];
  });
}


- (void)bounceMedal {
  // Do any additional setup after loading the view.
  [UIView animateWithDuration:5.4
                        delay:0
       usingSpringWithDamping:0.05f
        initialSpringVelocity:4.0f
                      options:UIViewAnimationOptionCurveEaseInOut animations:^{
                        self.medal.transform=CGAffineTransformMakeScale(0.4f, 0.4f);
                      }completion:^(BOOL finished) {

                      }];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void) runSpinAnimationOnView:(UIView*)view duration:(CGFloat)duration rotations:(CGFloat)rotations repeat:(float)repeat
{
  CABasicAnimation* rotationAnimation;
  rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
  rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 /* full rotation*/ * rotations * duration ];
  rotationAnimation.duration = duration;
  rotationAnimation.cumulative = YES;
  rotationAnimation.repeatCount = repeat;

  [view.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
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

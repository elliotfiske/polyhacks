//
//  ChallengeCellTableViewCell.m
//  ecopolyhack
//
//  Created by Myra Lukens on 1/14/17.
//  Copyright © 2017 Elliot Fiske. All rights reserved.
//

#import "ChallengeCellTableViewCell.h"
#import "Util.h"

@implementation ChallengeCellTableViewCell



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
  if (self.heartButton != nil) {
    [self.heartButton.imageView setTintColor:UIColorFromRGB(0xdedede)];
  }
  self.liked = false;
  self.likes = arc4random_uniform(274) + 30;

  self.numLikes.text = [NSString stringWithFormat:@"%d", self.likes];
}

- (IBAction)likeIt:(UIButton *)sender {
  if (self.liked) {
    [UIView animateWithDuration:0.25
                          delay:0
         usingSpringWithDamping:0.2f
          initialSpringVelocity:8.0f
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                       self.heartButton.transform = CGAffineTransformMakeScale(1.0,1.0);
                     }
                     completion:^(BOOL finished) {}];
    [self.heartButton.imageView setTintColor:UIColorFromRGB(0xdedede)];
    self.likes --;
  }
  else {
    [UIView animateWithDuration:0.25
                          delay:0
         usingSpringWithDamping:0.2f
          initialSpringVelocity:8.0f
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                       self.heartButton.transform = CGAffineTransformMakeScale(1.4,1.4);
                     }
                     completion:^(BOOL finished) {}];
    [self.heartButton.imageView setTintColor:UIColorFromRGB(0xf55361)];
    self.likes ++;
  }
  self.liked = !self.liked;
  self.numLikes.text = [NSString stringWithFormat:@"%d", self.likes];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

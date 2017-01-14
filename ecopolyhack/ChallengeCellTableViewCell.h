//
//  ChallengeCellTableViewCell.h
//  ecopolyhack
//
//  Created by Myra Lukens on 1/14/17.
//  Copyright © 2017 Elliot Fiske. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChallengeCellTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *challengeImage;
@property (weak, nonatomic) IBOutlet UILabel *challengeText;

@end

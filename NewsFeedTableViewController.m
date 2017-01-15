//
//  NewsFeedTableViewController.m
//  ecopolyhack
//
//  Created by Myra Lukens on 1/14/17.
//  Copyright © 2017 Elliot Fiske. All rights reserved.
//

#import "NewsFeedTableViewController.h"
#import "Util.h"


@interface NewsFeedTableViewController ()

@end

@implementation NewsFeedTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
  UIView *result = nil;
  result = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 500, 50)];
  result.backgroundColor = [UIColor whiteColor];
  UILabel *fart = [[UILabel alloc] initWithFrame:CGRectMake(12, 0, 500, 50)];

  if (section == 0) {
    fart.text = @"January 14, 2017 — Throw Away Some Trash";
  }
  else {
    fart.text = @"January 13, 2017 — Turn Off Some Lights";
  }

//  fart.textAlignment = NSTextAlignmentCenter;
  fart.font = [fart.font fontWithSize:16];
  fart.textColor = UIColorFromRGB(0x40b193);
  [result addSubview:fart];

  return result;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
  return 50;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (indexPath.section == 0) {
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *moviePath = [bundle pathForResource:@"nick_demo" ofType:@"MOV"];
    NSURL *movieURL = [NSURL fileURLWithPath:moviePath];

    self.theMoviPlayer = [[MPMoviePlayerController alloc] initWithContentURL:movieURL];
    self.theMoviPlayer.controlStyle = MPMovieControlStyleFullscreen;
//    self.theMoviPlayer.view.transform = CGAffineTransformConcat(self.theMoviPlayer.view.transform, CGAffineTransformMakeRotation(M_PI_2));
    UIWindow *backgroundWindow = [[UIApplication sharedApplication] keyWindow];
    [self.theMoviPlayer.view setFrame:backgroundWindow.frame];
    [backgroundWindow addSubview:self.theMoviPlayer.view];
    [self.theMoviPlayer play];

    double delayInSeconds = 4;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
      [self killMovie];
    });
  }
  else if (indexPath.section == 1) {

  }
}

- (void)killMovie {
  [self.theMoviPlayer stop];
  [self.theMoviPlayer.view removeFromSuperview];

}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

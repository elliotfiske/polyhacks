//
//  FeedTableViewController.m
//  ecopolyhack
//
//  Created by Myra Lukens on 1/14/17.
//  Copyright © 2017 Elliot Fiske. All rights reserved.
//

#import "FeedTableViewController.h"
#import "ChallengeCellTableViewCell.h"
#import "Util.h"

@interface FeedTableViewController ()

@end

@implementation FeedTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.navigationItem.title = @"CHALLENGES";
  self.tableView.rowHeight = UITableViewAutomaticDimension;
  self.tableView.estimatedRowHeight = 225;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  if (section == 0 || section == 1) return 1;
  if (section == 2) return 3;

  NSLog(@"UH OH SPAGHETTIO");
  return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

  UITableViewCell *cell;

  if (indexPath.section == 0) {
    ChallengeCellTableViewCell *chlCell = [tableView dequeueReusableCellWithIdentifier:@"myChallenge" forIndexPath:indexPath];
    cell = chlCell;
  }
  else if (indexPath.section == 1) {
    UITableViewCell *intermedCell = [tableView dequeueReusableCellWithIdentifier:@"intermediate" forIndexPath:indexPath];
    cell = intermedCell;
  }
  else if (indexPath.section == 2) {
    ChallengeCellTableViewCell *chlCell = [tableView dequeueReusableCellWithIdentifier:@"friendChallenge" forIndexPath:indexPath];
    cell = chlCell;
  }

//  cell.challengeText.text = @"Bring!";
//  cell.challengeImage.image = [UIImage imageNamed:@"sampleChl"];

    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Camera" bundle:nil];
  UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"cameraStart"];

  [self.navigationController presentViewController:vc animated:YES completion:nil];
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
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

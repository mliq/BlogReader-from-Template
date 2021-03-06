//
//  MLMasterViewController.m
//  BlogReader
//
//  Created by Michael Liquori on 9/16/14.
//  Copyright (c) 2014 Team Treehouse. All rights reserved.
//

#import "MLMasterViewController.h"

#import "MLDetailViewController.h"

//@interface MLMasterViewController () {
//    NSMutableArray *_objects;
//}
//@end

@implementation MLMasterViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//    self.titlesArray = [[NSArray alloc] initWithObjects:@"test",@"test2",@"test3",@"test4", nil];
//    self.titlesArray = @[@"test",@"test2",@"test3",@"test4"];
      self.titlesArray = [NSArray arrayWithObjects: @"test",@"test2",@"test3",@"test4", nil];
    // ok finally it worked, it seems the space after : was the key?
    
	// Do any additional setup after loading the view, typically from a nib.
//    self.navigationItem.leftBarButtonItem = self.editButtonItem;
//
//    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
//    self.navigationItem.rightBarButtonItem = addButton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Funcionality for editing and adding data, not needed for this app.= which will only display data.
//- (void)insertNewObject:(id)sender
//{
//    if (!_objects) {
//        _objects = [[NSMutableArray alloc] init];
//    }
//    [_objects insertObject:[NSDate date] atIndex:0];
//    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
//    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
//}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.titlesArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    // above allows it to make a table with only number of rows that fit on screen, then reuse them, rather than overloading memory.

    NSString *object = self.titlesArray[indexPath.row];
    // same as [self.titlesArray objectAtIndex:indexPath.row];
//    NSDate *object = self.titlesArray[indexPath.row];
    cell.textLabel.text = object;
    //    cell.textLabel.text = [object description];
    return cell;
}

//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    // Return NO if you do not want the specified item to be editable.
//    return YES;
//}

//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//        [_objects removeObjectAtIndex:indexPath.row];
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
//        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
//    }
//}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = self.titlesArray[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
}

@end

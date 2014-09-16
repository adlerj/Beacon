//
//  GROMyGroupsTableViewController.m
//  GrouPic
//
//  Created by Jeffrey Adler on 9/8/14.
//  Copyright (c) 2014 GrouPic, inc. All rights reserved.
//

#import "GROMyGroupsTableViewController.h"
#import "GROGroupTableViewCell.h"
#import "GROGroupViewController.h"

@interface GROMyGroupsTableViewController ()
@property (nonatomic, strong) NSArray *dataset;
@end

@implementation GROMyGroupsTableViewController

- (NSArray *)dataset {
    if (!_dataset) {
        _dataset = @[@"Rutgers Crew", @"Work Dudes", @"Cousins", @"JNJ", @"Frat Bros", @"Foodies"];
    }
    
    return _dataset;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataset count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GROGroupTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GroupCell" forIndexPath:indexPath];
    
    cell.label.text = [self.dataset objectAtIndex:indexPath.row];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *name = self.dataset[1];
    
    GROGroupViewController *groupVC = [self.storyboard instantiateViewControllerWithIdentifier:@"GroupViewController"];
    groupVC.groupName = name;

    [self.navigationController pushViewController:groupVC animated:YES];

}


@end

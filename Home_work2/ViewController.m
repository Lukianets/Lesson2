//
//  ViewController.m
//  Home_work2
//
//  Created by Zhenya Lukianetc on 20.10.13.
//  Copyright (c) 2013 Zhenya Lukianetc. All rights reserved.
//

#import "ViewController.h"
#import "UIKit/UIKit.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize mainTableView;


-(NSInteger) numberOfSectionsInTabelView: (UITableView *) tabelView
{
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return tableViewContent.count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainPodcast"];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainPodcast"];
    }
    
    cell.textLabel.text = [tableViewContent objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.textColor = [UIColor redColor];
    
    return cell;
}


-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *selectedIndexPath = [NSString stringWithFormat:@"Podcast %i was selected", [indexPath row]+1];
    UIAlertView *selectedCellAlert = [[UIAlertView alloc]  initWithTitle:@"Podcast Selected" message:selectedIndexPath delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil];
    [selectedCellAlert show];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    tableViewContent = [[NSMutableArray alloc] init ];
    
    for (int i = 0; i < 7; i++) {
        [tableViewContent addObject:[NSString stringWithFormat:@"Podcast %i", i+1]];
    }
    
    //tableViewContent = [[NSMutableArray alloc] initWithObjects:@"Podcast 1", @"Podcast 2", @"Podcast 3", @"Podcast 4", @"Podcast 5", @"Podcast 6", nil];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

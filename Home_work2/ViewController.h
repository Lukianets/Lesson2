//
//  ViewController.h
//  Home_work2
//
//  Created by Zhenya Lukianetc on 20.10.13.
//  Copyright (c) 2013 Zhenya Lukianetc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    IBOutlet UITableView *mainTableView;
    NSMutableArray *tableViewContent;
}


@property (nonatomic, retain) IBOutlet UITableView *mainTableView;

@end

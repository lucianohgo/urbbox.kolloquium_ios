//
//  ParticipantsTableViewController.h
//  Events
//
//  Created by Abraao Barros Lacerda on 19/09/14.
//  Copyright (c) 2014 Teknowledge Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParticipantsTableViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource, UISearchBarDelegate,UISearchDisplayDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (strong,nonatomic) NSArray *filteredArray;
@property (strong,nonatomic) NSArray *dataSource;
@end
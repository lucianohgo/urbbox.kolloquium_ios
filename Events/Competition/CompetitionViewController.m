//
//  CompetitionViewController.m
//  Events
//
//  Created by Abraao Barros Lacerda on 22/09/14.
//  Copyright (c) 2014 Teknowledge Software. All rights reserved.
//

#import "CompetitionViewController.h"
#import "KQCache.h"
#import "Util.h"
#import "KQEventAPI.h"

@interface CompetitionViewController ()

@end

@implementation CompetitionViewController
KQCache *cache;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    cache = [KQCache sharedManager];
    
    NSDictionary *data = [cache getDataFromHash:@"http://kolloquium.herokuapp.com/rest/event/1"];
    
    _description.text = [data objectForKey:@"descript"];
    
    [_description sizeToFit];
    [_kategorie sizeToFit];
    
    [KQEventAPI getImageFromUrl:[data objectForKey:@"thumb"] finishHandler:^(NSData* data){
        _photo.image=[UIImage imageWithData:data];
    } startHandler:^{
        
    } errorHandler:^{
    }];
    [_scroll_page setContentSize:CGSizeMake(self.view.frame.size.width, 1024)];
    
    [Util setupNavigationBar:self withTitle:@"Werkzeugbau Mit Zukunft"];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
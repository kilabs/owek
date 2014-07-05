//
//  netraMainViewController.m
//  Suara Hewan
//
//  Created by Arie Prasetyo on 7/5/14.
//  Copyright (c) 2014 vanbungkring. All rights reserved.
//

#import "netraMainViewController.h"
#import "netraTableViewCell.h"
@interface netraMainViewController ()

@end

@implementation netraMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        table = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        table.backgroundColor = [UIColor clearColor];
        table.separatorColor =[UIColor clearColor];
        
        table.delegate =self;
        table.dataSource = self;
        [self.view addSubview:table];
        if(IS_IPHONE_5)
            self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"i5"]];
        else
            self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"i4"]];
        
    }
    return self;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return nama.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 100;
}
- (void)tableView:(UITableView *)tableView
  willDisplayCell:(UITableViewCell *)cell
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [cell setBackgroundColor:[UIColor clearColor]];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"newFriendCell";
    netraTableViewCell *cell = [[netraTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    if(!cell){
        cell = [[netraTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.icon.image = [UIImage imageNamed:[nama objectAtIndex:indexPath.row]];
    return cell;
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"source" ofType:@"json"];
    NSString *myJSON = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:NULL];
    if (!myJSON) {
        NSLog(@"File couldn't be read!");
        return;
    }
    else{
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:[myJSON dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];
        nama= [json valueForKey:@"nama"];
        NSLog(@"items->%@",nama);
    }
    // Do any additional setup after loading the view.

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

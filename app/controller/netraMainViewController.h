//
//  netraMainViewController.h
//  Suara Hewan
//
//  Created by Arie Prasetyo on 7/5/14.
//  Copyright (c) 2014 vanbungkring. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADBannerView.h"
@interface netraMainViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *table;
    NSArray *nama;
    // Declare one as an instance variable
    GADBannerView *bannerView_;
}
@end

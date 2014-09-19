//
//  MLDetailViewController.h
//  BlogReader
//
//  Created by Michael Liquori on 9/16/14.
//  Copyright (c) 2014 Team Treehouse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MLDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end

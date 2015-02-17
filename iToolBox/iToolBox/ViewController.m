//
//  ViewController.m
//  iToolBox
//
//  Created by liuhongnian on 15/1/8.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import "ViewController.h"

#import "iTBLog.h"

#import "UIBarButtonItem+iTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UIImage *image = [[UIImage alloc] init];
    
    
//    iTBLog(image);
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]it_initWithImage:[UIImage imageNamed:@"success"] style:UIBarButtonItemStyleDone handler:^(id sender) {
        
        NSLog(@"89");
    }];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] it_initWithTitle:@"奥迪" style:UIBarButtonItemStyleDone handler:^(id sender) {
        NSLog(@"奥迪");
    }];
    self.navigationItem.leftBarButtonItem = leftItem;
    
    self.navigationItem.rightBarButtonItem = rightItem;
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

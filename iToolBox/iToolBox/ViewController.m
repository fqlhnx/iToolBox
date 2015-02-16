//
//  ViewController.m
//  iToolBox
//
//  Created by liuhongnian on 15/1/8.
//  Copyright (c) 2015年 liuhongnian. All rights reserved.
//

#import "ViewController.h"

#import "iTBLog.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UIImage *image = [[UIImage alloc] init];
    
    
    iTBLog(image);
    
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

//
//  ViewController.m
//  MoveView
//
//  Created by Apple on 16/12/14.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "MoveView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MoveView * move=[[MoveView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    move.backgroundColor=[UIColor blueColor];
    move.center=self.view.center;
    move.layer.cornerRadius=50;
    [self.view addSubview:move];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

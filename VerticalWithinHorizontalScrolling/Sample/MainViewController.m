//
//  MainViewController.m
//  Sample
//
//  Created by Xinfeng Du on 17/8/1.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "MainViewController.h"
#import <AsyncDisplayKit/AsyncDisplayKit.h>
#import "ViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
  
  [super viewDidLoad];
    // Do any additional setup after loading the view.
  
  ASButtonNode *buttonNode = [[ASButtonNode alloc] init];
  buttonNode.frame = CGRectMake(0, 0, 200, 60);
  buttonNode.view.center = self.view.center;
  [buttonNode setTitle:@"enter" withFont:[UIFont systemFontOfSize:16] withColor:[UIColor purpleColor] forState:UIControlStateNormal];
  [buttonNode addTarget:self action:@selector(click) forControlEvents:ASControlNodeEventTouchUpInside];
  [self.view addSubnode:buttonNode];
}

- (void)click
{
  [self.navigationController pushViewController:[[ViewController alloc] init] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  ViewController.m
//  Button-SelectorSample
//
//  Created by 廣川政樹 on 2013/03/29.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  //ボタン初期化
  UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  [button setTitle:@"ボタン" forState:UIControlStateNormal];
  [button setTitle:@"ボタン" forState:UIControlStateHighlighted];
  [button setFrame:CGRectMake((self.view.frame.size.width / 2) - (200 / 2),
                              (self.view.frame.size.height / 2) - (40 / 2),
                              200,
                              40)];
  //タグを設定
  button.tag = 1;
  //ボタンクリック時に呼び出されるメソッドの指定
  [button addTarget:self
             action:@selector(buttonClick:)
   forControlEvents:UIControlEventTouchDown];
  [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)buttonClick:(id)selector
{
  //ボタンが押された時の処理
  NSLog(@"ボタンが押されました");
}

@end

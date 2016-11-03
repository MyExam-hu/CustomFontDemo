//
//  ViewController.m
//  CustomFontDemo
//
//  Created by huweidong on 3/11/16.
//  Copyright © 2016年 huweidong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //查找本地字体
    for(NSString *fontfamilyname in [UIFont familyNames]){
        NSLog(@"family:'%@'",fontfamilyname);
        for(NSString *fontName in [UIFont fontNamesForFamilyName:fontfamilyname]){
            NSLog(@"\tfont:'%@'",fontName);
        }
        NSLog(@"-------------");
    }
    
    //FontAwesome
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 300, 400)];
    label.text = @"                                                  ";
    label.numberOfLines = 0;
    label.textColor=[UIColor blueColor];
    UIFont *font = [UIFont fontWithName:@"FontAwesome" size:40];
    if (font) {
        label.font = font;
        [self.view addSubview:label];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

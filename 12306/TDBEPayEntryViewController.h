//
//  TDBEPayEntryViewController.h
//  12306
//
//  Created by macbook on 13-7-28.
//  Copyright (c) 2013年 zwz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TDBEPayEntryViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (nonatomic) NSString *totalPrice;
@property (nonatomic, copy) NSString *orderSequenceNo;

@end

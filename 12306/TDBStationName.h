//
//  TDBStationName.h
//  12306
//
//  Created by macbook on 13-7-21.
//  Copyright (c) 2013年 zwz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TDBStationName : NSObject

- (BOOL)fetchStationNameRawTextFromNet;

- (BOOL)parseRawText;

@end

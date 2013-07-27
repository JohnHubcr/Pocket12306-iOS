//
//  TDBLeftTicketForList.m
//  12306
//
//  Created by macbook on 13-7-27.
//  Copyright (c) 2013年 zwz. All rights reserved.
//

#import "TDBLeftTicketForList.h"
#import "GlobalDataStorage.h"

@implementation TDBLeftTicketForList

- (void)setDataModel:(NSArray *)dataModel
{
    if (_dataModel != dataModel) {
        
        //节点被复用后，会被重新设置数据，在这里发出重绘指令
        _dataModel = dataModel;
        [self setNeedsDisplay];
    }
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // 由于屏幕转换后，drawRect不会被调用，所以在这发出重绘指令
    [self setNeedsDisplay];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGSize size = self.frame.size;
    
    if (size.width > 180.f) { //横屏模式下，自左向右，上下两列显示
        int pos = 0;
        
        NSUInteger count = self.dataModel.count;
        for (NSUInteger i = 0; i < count; i++) {
            NSString *info =  [self.dataModel objectAtIndex:i];
            if (![info isEqualToString:@"--"]) {
                NSString *seatNameFull = [[GlobalDataStorage seatNameFull] objectAtIndex:i];
                
                [info drawAtPoint:CGPointMake(size.width / 5 * pos + 13, size.height - 20) withFont:[UIFont systemFontOfSize:14]];
                [seatNameFull drawAtPoint:CGPointMake(size.width / 5 * pos + 10, size.height - 40) withFont:[UIFont systemFontOfSize:14]];
                
                pos += 1;
            }
        }
    } else { // 竖屏模式下，自上而下显示
        int pos = 4;
        
        NSUInteger count = self.dataModel.count;
        for (NSUInteger i = 0; i < count; i++) {
            NSString *info =  [self.dataModel objectAtIndex:i];
            if (![info isEqualToString:@"--"]) {
                NSString *seatNameAbbr = [[GlobalDataStorage seatNameAbbr] objectAtIndex:i];
                
                [info drawAtPoint:CGPointMake(size.width - 30, size.height / 5 * pos) withFont:[UIFont systemFontOfSize:12]];
                [seatNameAbbr drawAtPoint:CGPointMake(20, size.height / 5 * pos) withFont:[UIFont systemFontOfSize:12]];
                
                pos -= 1;
            }
        }
    }
}


@end

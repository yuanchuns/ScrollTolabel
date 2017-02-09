//
//  NewsView.m
//  test
//
//  Created by admin on 16/8/1.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "NewsView.h"

@implementation NewsView
@synthesize titleLabel;
@synthesize descriptionLabel;
@synthesize newsButton;
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        //[self setBackgroundColor:[UIColor grayColor]];
        titleLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 10, self.frame.size.width, 20)];
        titleLabel.textColor=[UIColor grayColor];
        titleLabel.backgroundColor=[UIColor clearColor];
        titleLabel.font=[UIFont boldSystemFontOfSize:13.0];
        titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        titleLabel.numberOfLines = 1;
        titleLabel.backgroundColor = [UIColor yellowColor];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:titleLabel];
        
        
        descriptionLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, titleLabel.frame.origin.x+titleLabel.frame.size.height+10,self.frame.size.width, 15)];
        descriptionLabel.textColor=[UIColor blackColor];
        descriptionLabel.backgroundColor=[UIColor clearColor];
        descriptionLabel.textAlignment = NSTextAlignmentCenter;
        descriptionLabel.font=[UIFont systemFontOfSize:11.0];
        descriptionLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        descriptionLabel.numberOfLines = 1;
        descriptionLabel.backgroundColor = [UIColor blueColor];
        [self addSubview:descriptionLabel];
        
        newsButton=[UIButton buttonWithType:UIButtonTypeCustom];
        [newsButton setFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        [self addSubview:newsButton];
    }
    return self;
}
-(void)setViewWithTitle:(NSString *)title description:(NSString *)description{
    [titleLabel setText:title];
    [descriptionLabel setText:description];
}

@end

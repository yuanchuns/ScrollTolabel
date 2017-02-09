//
//  NewsView.h
//  test
//
//  Created by admin on 16/8/1.
//  Copyright © 2016年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsView : UIView

@property (retain, nonatomic) UILabel *titleLabel;
@property (retain, nonatomic) UILabel *descriptionLabel;
@property (retain, nonatomic) UIButton *newsButton;

-(void)setViewWithTitle:(NSString *)title description:(NSString *)description;

@end

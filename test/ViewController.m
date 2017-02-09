//
//  ViewController.m
//  test
//
//  Created by admin on 16/8/1.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "ViewController.h"
#import "NewsView.h"
#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HIGHT [UIScreen mainScreen].bounds.size.height
@interface ViewController ()
{
    NSMutableArray *rssArray;
}
@property (strong, nonatomic) NewsView *newsView;
@end

@implementation ViewController
@synthesize newsView;

static int countInt=0;

- (void)viewDidLoad {
    [super viewDidLoad];
    newsView=[[NewsView alloc] initWithFrame:CGRectMake(0.0f,HIGHT/2-20,WIDTH,60)];
    newsView.backgroundColor = [UIColor redColor];
    [self.view addSubview:newsView];
    
    rssArray = [[NSMutableArray alloc]initWithObjects:@"我是谁？",@"你好啊？",@"谢谢您",@"哈哈哈", nil];
    [newsView.titleLabel setText:[rssArray objectAtIndex:countInt]];
    [newsView.descriptionLabel setText:@"TESTDESCRIPTION"];
    [newsView.newsButton addTarget:self action:@selector(topNewsInfoClicked:) forControlEvents:UIControlEventTouchUpInside];
    [UIView animateWithDuration:0.7 delay:0 options:0 animations:^(){
        newsView.alpha = 0.2;
        [newsView exchangeSubviewAtIndex:1 withSubviewAtIndex:0];
        newsView.alpha = 1;
    } completion:^(BOOL finished){
        //设置定时器
        [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(displayNews) userInfo:nil repeats:YES];
    }];
}

-(void)displayNews{
    countInt++;
    if (countInt >= [rssArray count])
        countInt=0;
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = 0.5f ;
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = YES;
    animation.type = @"cube";
    
    [newsView.layer addAnimation:animation forKey:@"animationID"];
    [newsView setViewWithTitle:[rssArray objectAtIndex:countInt] description:@"test"];
}
-(void)topNewsInfoClicked:(id)sender{
    
    NSLog(@"想要跳转的界面");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

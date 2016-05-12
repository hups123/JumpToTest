//
//  ViewController.m
//  JumpToTest
//
//  Created by peisenhups on 16/1/12.
//  Copyright © 2016年 peisenhups. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property(strong,nonatomic)UIScrollView *screenScrollView;

@property(strong,nonatomic)UIImageView *navImageView;
@property(strong,nonatomic)UIImageView *subImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.scrollView setContentSize:CGSizeMake(375, 1003)];
    [self.scrollView setScrollEnabled:YES];
    
    self.scrollView.showsVerticalScrollIndicator=NO;
    UIView *hiddenstatusBarView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 375, 20)];
    [hiddenstatusBarView setBackgroundColor:[UIColor colorWithRed:144/255.0 green:200/255.0f blue:122.0/255.0f alpha:1.0]];
    [self.imageView addSubview:hiddenstatusBarView];
    [self.imageView removeFromSuperview];
    
//    UIImage *sourceImage=[UIImage imageNamed:@"mysession.jpg"];
//    UIImage *navImage=[self getFrontImage:sourceImage];
    
    [(AppDelegate *)[UIApplication sharedApplication].delegate switchToLoginViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIImage*)getFrontImage:(UIImage*)photoimage
{
    CGImageRef imgRef =photoimage.CGImage;
    CGImageRef finalImgRef=CGImageCreateWithImageInRect(imgRef,CGRectMake(0, 20, 375, 44));
    return [UIImage imageWithCGImage:finalImgRef];
}

-(UIImage*)getEndImage:(UIImage*)photoimage
{
    CGImageRef imgRef =photoimage.CGImage;
    int height=self.imageView.frame.size.height;
    CGImageRef finalImgRef=CGImageCreateWithImageInRect(imgRef,CGRectMake(0, 64, 375, height-64));
    return [UIImage imageWithCGImage:finalImgRef];
}

@end

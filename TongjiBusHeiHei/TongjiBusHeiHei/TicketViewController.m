//
//  TicketViewController.m
//  TongjiBusHeiHei
//
//  Created by Nathan on 7/19/15.
//  Copyright (c) 2015 TAC. All rights reserved.
//

#import "TicketViewController.h"

@interface TicketViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *identityLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *fromLabel;
@property (weak, nonatomic) IBOutlet UILabel *toLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *trackImageView;

@property (weak, nonatomic) IBOutlet UIImageView *carImageView;

@end

@implementation TicketViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureContent];
    [self configureProgressView];
    
}

- (void)viewDidAppear:(BOOL)animated{
    [UIView animateWithDuration:10.0
                          delay:0
                        options:UIViewAnimationOptionRepeat | UIViewAnimationOptionCurveLinear
                     animations:^{
                         self.trackImageView.frame = CGRectMake(83, 182, 166, 9);
                         self.carImageView.frame = CGRectMake(220, 142, 47, 32);
                     }
                     completion:^(BOOL completed){
                         self.trackImageView.frame = CGRectMake(83, 182, 10, 9);
                         self.carImageView.frame = CGRectMake(77, 142, 47, 32);
                     }
     ];
}

- (void)configureProgressView{
    
    UIImage *track = [UIImage imageNamed:@"bar_track"];
    self.trackImageView.image = [track resizableImageWithCapInsets:UIEdgeInsetsMake(0, 5, 0, 5)];
    
    
}

- (void)configureContent{
    self.nameLabel.text = self.name;
    self.identityLabel.text = self.identity;

    self.dateLabel.text = self.date;
    self.fromLabel.text = self.isFromJiading ? @"嘉定" : @"四平";
    self.toLabel.text = self.isFromJiading ? @"四平" : @"嘉定";
    self.detailLabel.text = self.detail;
    self.imageView.image = self.isFromJiading ? [UIImage imageNamed:@"jiading"] : [UIImage imageNamed:@"benbu"];
    
}


- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

@end

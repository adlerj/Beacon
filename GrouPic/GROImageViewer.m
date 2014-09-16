//
//  GROImageViewer.m
//  GrouPic
//
//  Created by Jeffrey Adler on 9/16/14.
//  Copyright (c) 2014 GrouPic, inc. All rights reserved.
//

#import "GROImageViewer.h"
@interface GROImageViewer ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation GROImageViewer

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView.image = self.image;
}

- (IBAction)backPressed:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end

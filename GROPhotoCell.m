//
//  GROPhotoCell.m
//  GrouPic
//
//  Created by Jeffrey Adler on 9/16/14.
//  Copyright (c) 2014 GrouPic, inc. All rights reserved.
//

#import "GROPhotoCell.h"

@interface GROPhotoCell ()
// 1
@property(nonatomic, weak) IBOutlet UIImageView *photoImageView;
@end

@implementation GROPhotoCell
- (void) setAsset:(ALAsset *)asset
{
    // 2
    _asset = asset;
    self.photoImageView.image = [UIImage imageWithCGImage:[asset thumbnail]];
}
@end
//
//  GROPhotoCell.h
//  GrouPic
//
//  Created by Jeffrey Adler on 9/16/14.
//  Copyright (c) 2014 GrouPic, inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>

@interface GROPhotoCell : UICollectionViewCell
@property(nonatomic, strong) ALAsset *asset;
@end
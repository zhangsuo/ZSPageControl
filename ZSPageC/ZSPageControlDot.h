//
//  ZSPageControlDot.h
//  ZSPageControl
//
//  Created by 张锁 on 2021/6/1.
//

#import <UIKit/UIKit.h>

@interface ZSPageControlDot : UIView

@property(nonatomic, strong) UIColor *unSelectTintColor;

@property(nonatomic, strong) UIColor *selectTintColor;

@property (nonatomic, strong) UIImage *unselectImage;

@property (nonatomic, strong) UIImage *selectImage;

@property (nonatomic, assign) CGSize size; // default is (20,20)

@property (nonatomic, strong) UIColor *borderColor; //defult is nil;

@property (nonatomic, assign) CGFloat borderWidth; // default is 0.f;

@property (nonatomic, assign) CGFloat conerRadius; //default is 10.f

- (void)setSelected:(BOOL)selected;


@end


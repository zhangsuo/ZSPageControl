//
//  ZSPageControlDot.m
//  ZSPageControl
//
//  Created by 张锁 on 2021/6/1.
//

#import "ZSPageControlDot.h"

static CGFloat const _defaultDotWidth = 10.f;

@interface ZSPageControlDot ()

@property (nonatomic, strong) UIImageView *coverImageView;

@end

@implementation ZSPageControlDot

- (instancetype)init {
    if (self = [super init]) {
        [self initializeConfig];
    }
    return self;
}

- (void)initializeConfig {
    
    self.clipsToBounds = YES;
    
    _coverImageView = [[UIImageView alloc]init];
    [self addSubview:_coverImageView];
    
    _unselectImage = nil;
    _selectImage = nil;
    _conerRadius = _defaultDotWidth/2;
    
    _unSelectTintColor = [UIColor lightGrayColor];
    _selectTintColor = [UIColor darkGrayColor];
    _borderColor = nil;
    
    _size = CGSizeMake(_defaultDotWidth, _defaultDotWidth);
    
}

- (void)layoutSubviews {
    
    _coverImageView.frame = self.bounds;
}

#pragma mark - API

- (void)setSelected:(BOOL)selected {
    if (selected) {
        if (_selectImage) {
            self.coverImageView.image = _selectImage;
            self.backgroundColor = [UIColor clearColor];
        }else {
            self.backgroundColor = _selectTintColor;
        }
    }else {
        if (_unselectImage) {
            self.coverImageView.image = _unselectImage;
        }else {
            self.backgroundColor = _unSelectTintColor;
        }
    }
}

@end

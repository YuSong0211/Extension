

#import <UIKit/UIKit.h>
//typedef NS_ENUM(NSInteger, ZJViewBorder) {
//    ZJViewBorderTop = 1<<1,
//    ZJViewBorderLeft = 1<<2,
//    ZJViewBorderBottom = 1<<3,
//    ZJViewBorderRight = 1<<4,
//};

@interface UIView (Extension)
@property (assign, nonatomic) CGFloat x;
@property (assign, nonatomic) CGFloat y;
@property (assign, nonatomic) CGFloat width;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGSize size;
@property (assign, nonatomic) CGFloat centerX;
@property (assign, nonatomic) CGFloat centerY;

- (UIImage *)captureView;
- (UIImage *)captureViewWithRect:(CGRect)rect andLayer:(CALayer *)layer;
//@property (nonatomic, assign) ZJViewBorder borderWhich;

@end

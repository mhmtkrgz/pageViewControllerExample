//
//  QPPhotoViewController.h
//  zoomPaging
//
//  Created by Mehmet Karagöz on 23.11.2020.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface QPPhotoViewController : UIViewController
+ (QPPhotoViewController *)photoVCWithImage:(UIImage *)image pageIndex:(NSUInteger)pageIndex;
@property (nonatomic, assign) NSInteger pageIndex;
@end

NS_ASSUME_NONNULL_END

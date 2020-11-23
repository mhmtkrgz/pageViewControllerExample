//
//  QPPageViewController.m
//  zoomPaging
//
//  Created by Mehmet Karagöz on 23.11.2020.
//

#import "QPPageViewController.h"
#import "QPPhotoViewController.h"

@interface QPPageViewController () <UIPageViewControllerDataSource> @end

@implementation QPPageViewController {
    NSArray *_colors;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = self;
    
    _colors = @[[UIImage imageNamed:@"image1"], [UIImage imageNamed:@"image2"], [UIImage imageNamed:@"image3"]];
    
    [self setViewControllers:@[[QPPhotoViewController photoVCWithImage:_colors[0] pageIndex:0]]
                   direction:UIPageViewControllerNavigationDirectionForward
                    animated:NO
                  completion:NULL];
}

#pragma mark - <UIPageViewControllerDataSource>

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    NSInteger index = ((QPPhotoViewController *)viewController).pageIndex - 1;
    
    if (index < _colors.count && index >= 0) {
        return [QPPhotoViewController photoVCWithImage:_colors[index] pageIndex:index];
    }
    
    return nil;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    NSInteger index = ((QPPhotoViewController *)viewController).pageIndex + 1;
    
    if (index < _colors.count && index >= 0) {
        return [QPPhotoViewController photoVCWithImage:_colors[index] pageIndex:index];
    }
    
    return nil;
}

@end

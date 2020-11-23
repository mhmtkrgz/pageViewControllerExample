//
//  QPPhotoViewController.m
//  zoomPaging
//
//  Created by Mehmet Karagöz on 23.11.2020.
//

#import "QPPhotoViewController.h"

@interface QPPhotoViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) UIImage *image;
@end

@implementation QPPhotoViewController

#pragma mark - Initializers

+ (QPPhotoViewController *)photoVCWithImage:(UIImage *)image pageIndex:(NSUInteger)pageIndex {
    return [[self alloc] initWithImage:image pageIndex:pageIndex];
            
    return nil;
}

- (id)initWithImage:(UIImage *)image pageIndex:(NSInteger)pageIndex {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.image = image;
        self.pageIndex = pageIndex;
    }
    
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView.image = self.image;
}

#pragma mark - <UIScrollViewDelegate>

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.imageView;
}


@end

#import <UIKit/UIKit.h>
#import "PCPageView.h"

static NSString *PageCellIdentifier = @"PageCellIdentifier";

@interface PCPageCell : UICollectionViewCell

@property (nonatomic, strong) PCPageView *pageView;

@end

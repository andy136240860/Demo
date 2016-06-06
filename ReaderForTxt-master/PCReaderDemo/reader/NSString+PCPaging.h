#import <UIKit/UIKit.h>

@interface NSString (PCPaging)

- (NSArray *)paginationWithAttributes:(NSDictionary *)attributes constrainedToSize:(CGSize)size;

- (NSString *)halfWidthToFullWidth;

@end

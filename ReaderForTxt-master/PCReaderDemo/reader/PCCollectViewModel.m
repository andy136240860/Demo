#import "PCCollectViewModel.h"
#import "PCPageCell.h"
#import "PCGlobalModel.h"

@interface PCCollectViewModel ()

@end

@implementation PCCollectViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.dataArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    PCPageCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:PageCellIdentifier forIndexPath:indexPath];
    NSString *subText = [self.text substringWithRange:NSRangeFromString(self.dataArray[indexPath.row])];
    [cell.pageView setText:[[NSAttributedString alloc] initWithString:subText attributes:self.attributes]];
    
    if ([PCGlobalModel shareModel].isNightModel) {
        cell.pageView.backgroundColor = [UIColor blackColor];
    }
    else{
        cell.pageView.backgroundColor = [UIColor whiteColor];
    }
    
    return cell;
}

@end

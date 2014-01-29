//
//  BooksListViewController.h
//  B-TechStudies
//
//  Created by MAC on 20/01/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PDFExampleViewController.h"

@interface BooksListViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
{
    UICollectionView *_collectionView;

}
 @end

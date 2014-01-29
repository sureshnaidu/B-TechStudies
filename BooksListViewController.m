//
//  BooksListViewController.m
//  B-TechStudies
//
//  Created by MAC on 20/01/14.
//  Copyright (c) 2014 MAC. All rights reserved.
//

#import "BooksListViewController.h"

@interface BooksListViewController ()

@end

@implementation BooksListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIBarButtonItem *flipButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Book"
                                   style:UIBarButtonItemStyleBordered
                                   target:self
                                   action:@selector(flipView)];
    self.navigationItem.rightBarButtonItem = flipButton;
    
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    _collectionView=[[UICollectionView alloc] initWithFrame:CGRectMake(10, 80, 740, 1800) collectionViewLayout:layout];
    
    [_collectionView setDataSource:self];
    [_collectionView setDelegate:self];
    
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    [_collectionView setBackgroundColor:[UIColor blueColor]];
    
    [self.view addSubview:_collectionView];

    // Do any additional setup after loading the view from its nib.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

//The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    UIImageView *image0 =[[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 180, 80)];
    image0.image=[UIImage imageNamed:@"twitter.png"];
    cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"photo-frame-2.png"]];
    //cell.backgroundColor=[UIColor greenColor];
    [cell addSubview:image0];
    return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(200, 100);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
     NSLog(@"Photo clicked %i",indexPath.row);
    PDFExampleViewController *pdf = [[PDFExampleViewController alloc] init];
    [self.navigationController pushViewController:pdf animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)flipView{
    PDFExampleViewController *pdf = [[PDFExampleViewController alloc] init];
    [self.navigationController pushViewController:pdf animated:YES];
    
}
@end

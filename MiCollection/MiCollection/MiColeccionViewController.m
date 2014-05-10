//
//  MiColeccionViewController.m
//  MiCollection
//
//  Created by inf227al on 10/05/14.
//  Copyright (c) 2014 pucp. All rights reserved.
//

#import "MiColeccionViewController.h"

@interface MiColeccionViewController ()

@end

@implementation MiColeccionViewController

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
    // Do any additional setup after loading the view.
    num = 6;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)anhadirItem:(UIBarButtonItem *)sender {
    
    NSIndexPath *primerIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    num ++;
    [self.collectionView insertItemsAtIndexPaths:@[primerIndexPath]];
    
}


-(int)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 3;
}

-(int)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return num;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell= [collectionView dequeueReusableCellWithReuseIdentifier:@"miPlantilla" forIndexPath:indexPath];
    
    return cell;
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *miView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"miHeader"  forIndexPath:indexPath];
    
    return miView;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

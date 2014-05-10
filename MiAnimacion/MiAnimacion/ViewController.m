//
//  ViewController.m
//  MiAnimacion
//
//  Created by inf227al on 10/05/14.
//  Copyright (c) 2014 pucp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    
    /*
     [UIView animateWithDuration:3 animations:^{
        
        self.viewAzul.alpha = 0;
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:3 animations:^{
            
            self.viewAzul.alpha = 1;
            
        }];
        
    }];
    */
    
    
    /*
    self.viewAzul.layer.delegate = self;
    
    [CATransaction setAnimationDuration:3];
    
    [CATransaction setCompletionBlock:^{
        [CATransaction setAnimationDuration:3];
        self.viewAzul.layer.opacity = 1;
    }];
    
    self.viewAzul.layer.transform = CATransform3DMakeRotation(M_PI/3, 0.5, 0.5, 0);
    */
    
    
    [UIView transitionWithView:self.viewAzul duration:1 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
        
        self.viewAzul.backgroundColor = [UIColor redColor];
        
    } completion:^(BOOL finished) {
        
        [UIView transitionWithView:self.viewAzul duration:1 options:UIViewAnimationOptionTransitionFlipFromRight animations:^{
            
            self.viewAzul.backgroundColor = [UIColor blueColor];
            
        } completion:nil];
        
        
    }];
    
}





- (IBAction)animarAzul:(UIButton *)sender {
    
    
    //self.viewAzul.layer.position = CGPointMake(20, 300);
    
    [UIView animateWithDuration:0.6 animations:^{
        
        self.leftConstraint.constant += 100;
        [self.view layoutIfNeeded];
    }];
    
}


- (IBAction)animarVerde:(id)sender {
    
    /*self.viewAzul.layer.cornerRadius = 8;
    self.viewAzul.layer.borderWidth = 10;*/
    
    CGRect nuevoFrame = self.viewAzul.layer.frame;
    nuevoFrame.size.width *=4;
    
    self.viewAzul.layer.frame = nuevoFrame;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

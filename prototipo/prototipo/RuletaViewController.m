//
//  RuletaViewController.m
//  prototipo
//
//  Created by inf227al on 2/05/14.
//  Copyright (c) 2014 pucp. All rights reserved.
//

#import "RuletaViewController.h"

@interface RuletaViewController ()

@end

@implementation RuletaViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)apretoBoton:(id)sender {
    [self rotateImageView:self.ruleta ];
}

- (void)rotateImageView:(UIImageView *)iv
{
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         
                         iv.transform = CGAffineTransformRotate(iv.transform, M_PI/2);
                         
                     }
                     completion:^(BOOL finished) {
                         if(finished)
                          //Esto se ejecuta en un hilo aparte
                         [self performSelector:@selector(irASeleccionado) withObject:nil afterDelay:1];
                         
                         //  [self rotateImageView:iv];
                     }];
}

-(void)irASeleccionado
{
    [self performSegueWithIdentifier:@"ruleteo" sender:self];
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

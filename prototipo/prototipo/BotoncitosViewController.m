//
//  BotoncitosViewController.m
//  prototipo
//
//  Created by inf227al on 3/05/14.
//  Copyright (c) 2014 pucp. All rights reserved.
//

#import "BotoncitosViewController.h"

@interface BotoncitosViewController ()

@end

@implementation BotoncitosViewController

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

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.intruccionesBoton.layer.cornerRadius = 8;
    self.intruccionesBoton.layer.borderWidth = 2;
    self.intruccionesBoton.layer.borderColor = [UIColor blackColor].CGColor;
    
    CAGradientLayer *degradado = [CAGradientLayer layer];
    degradado.colors = @[(id)[UIColor whiteColor].CGColor,(id)[UIColor blueColor].CGColor];
    degradado.frame = self.intruccionesBoton.bounds;
    
    [self.intruccionesBoton.layer insertSublayer:degradado atIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

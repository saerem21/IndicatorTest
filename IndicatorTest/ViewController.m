//
//  ViewController.m
//  IndicatorTest
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indi1;

@property (strong, nonatomic) UIActivityIndicatorView *indi2;

@end

@implementation ViewController
- (IBAction)startIndi:(id)sender {
    [self.indi1 startAnimating];
    [self.indi2 performSelector:@selector(startAnimating) withObject:nil afterDelay:0.5];
    
}
- (IBAction)stopIndi:(id)sender {
    [self.indi1 stopAnimating];
    [self.indi2 performSelector:@selector(stopAnimating) withObject:nil afterDelay:0.5];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.indi2 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    self.indi2.hidesWhenStopped = YES;
    self.indi2.center = CGPointMake(160, 350);
    [self.view addSubview:self.indi2];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

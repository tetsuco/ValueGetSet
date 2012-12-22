//
//  SecondViewController.m
//  ValueGetSet
//
//  Created by tetsuco on 11/08/31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"


@implementation SecondViewController

@synthesize svStr;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // ラベルを追加
    UILabel *lb = [[UILabel alloc] init];
    lb.frame = CGRectMake(60, 100, 200, 30);
    lb.backgroundColor = [UIColor colorWithRed:0.0 green:0.3 blue:0.0 alpha:0.3];
    lb.textColor = [UIColor blackColor];
    lb.font = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    lb.textAlignment = UITextAlignmentCenter;
    lb.text = svStr;  // 受け取ったFirstViewControllerの値を表示
    [self.view addSubview:lb];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

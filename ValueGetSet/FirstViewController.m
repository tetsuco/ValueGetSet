//
//  FirstViewController.m
//  ValueGetSet
//
//  Created by tetsuco on 11/08/31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"


@implementation FirstViewController

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
    
    // テキストフィールド追加
    tf = [[[UITextField alloc] initWithFrame:CGRectMake(60, 100, 200, 30)] autorelease];
    tf.borderStyle = UITextBorderStyleRoundedRect;
    tf.textColor = [UIColor blackColor];
    [self.view addSubview:tf];
    
    // ボタンを追加
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    bt.frame = CGRectMake(110, 150, 100, 30);
    [bt setTitle:@"受け渡し" forState:UIControlStateNormal];
    [bt addTarget:self action:@selector(buttonAction:)forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:bt];
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


-(void)buttonAction:(UIButton*)button
{
    // 値を異なるビューへ渡す
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    [secondViewController setSvStr:tf.text];
    
    // 画面遷移
    [self.navigationController pushViewController:secondViewController animated:YES];
}

@end

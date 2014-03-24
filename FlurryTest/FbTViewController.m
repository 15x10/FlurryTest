//
//  FbTViewController.m
//  FlurryTest
//
//  Created by Don Huff on 3/24/14.
//  Copyright (c) 2014 15 by 10, LLC. All rights reserved.
//

#import "FbTViewController.h"

#import "FlurryAds.h"


@interface FbTViewController ()

@end


@implementation FbTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    [FlurryAds initialize:self];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [FlurryAds fetchAndDisplayAdForSpace:@"Standard Banner" view:self.view size:BANNER_BOTTOM];
}

-(void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [FlurryAds removeAdFromSpace:@"Standard Banner"];
}

@end

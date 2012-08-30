//
//  FBFViewController.m
//  FaceBookFriends
//
//  Created by Jiyeon Seo on 12. 8. 30..
//  Copyright (c) 2012년 Jiyeon Seo. All rights reserved.
//

#import "FBFViewController.h"

@interface FBFViewController ()

@end

@implementation FBFViewController
@synthesize userImageView, userName;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

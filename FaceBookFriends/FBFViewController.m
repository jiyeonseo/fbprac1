//
//  FBFViewController.m
//  FaceBookFriends
//
//  Created by Jiyeon Seo on 12. 8. 30..
//  Copyright (c) 2012년 Jiyeon Seo. All rights reserved.
//

#import "FBFViewController.h"
#import <FacebookSDK/FacebookSDK.h>

@interface FBFViewController () <FBLoginViewDelegate>
@property (strong, nonatomic) id<FBGraphUser> loggedInUser;
@end

@implementation FBFViewController
@synthesize userImageView, userName;

- (void)viewDidLoad
{
    [super viewDidLoad];

    FBLoginView *loginview =
    [[FBLoginView alloc] initWithPermissions:[NSArray arrayWithObject:@"status_update"]];
    
    loginview.frame = CGRectOffset(loginview.frame, 5, 5);
    loginview.delegate = self;
    
    [self.view addSubview:loginview];

    
    
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

#pragma mark - facebook
- (void)loginViewShowingLoggedInUser:(FBLoginView *)loginView {
   
}

- (void)loginViewFetchedUserInfo:(FBLoginView *)loginView
                            user:(id<FBGraphUser>)user {
   
    self.userName.text = [NSString stringWithFormat:@"%@", user.first_name];
    // setting the profileID property of the FBProfilePictureView instance
    // causes the control to fetch and display the profile picture for the user
    self.userImageView.profileID = user.id;
    

    
//    [UIImage imageW ithData:(user.image];

//    self.userImageView.image = [UIImage imageWithData:<#(NSData *)#>]
    self.loggedInUser = user;
}

- (void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView {
  
}


@end

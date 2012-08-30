//
//  FBFViewController.h
//  FaceBookFriends
//
//  Created by Jiyeon Seo on 12. 8. 30..
//  Copyright (c) 2012년 Jiyeon Seo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
@interface FBFViewController : UIViewController
{
    
}
@property (nonatomic, strong) IBOutlet FBProfilePictureView *userImageView;
@property (nonatomic, strong) IBOutlet UILabel *userName;




@end

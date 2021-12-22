//
//  UIAlertLogin.m
//  
//
//  Created by Letovsky on 23/12/2021.
//  Copyright (c) 2021 AnyKey Entertainment. All rights reserved.
//

SCLAlertView *alert = [[SCLAlertView alloc] initWithNewWindowWidth:250];

alert.customViewColor = [UIColor colorWithRed: 0.66 green: 0.88 blue: 0.39 alpha: 1.00];
alert.showAnimationType = SCLAlertViewShowAnimationFadeIn;
alert.hideAnimationType = SCLAlertViewHideAnimationFadeOut;
alert.shouldDismissOnTapOutside = NO;
alert.backgroundType = SCLAlertViewBackgroundBlur;
//by ad dev (AA)
alert.cornerRadius = 10.0f;
alert.backgroundViewColor = [UIColor colorWithRed: 0.99 green: 0.45 blue: 0.42 alpha: 1.00];

SCLAlertView *bad = [[SCLAlertView alloc] initWithNewWindowWidth:300];

bad.customViewColor = [UIColor colorWithRed: 0.66 green: 0.88 blue: 0.39 alpha: 1.00];
bad.showAnimationType = SCLAlertViewShowAnimationFadeIn;
alert.hideAnimationType = SCLAlertViewHideAnimationFadeOut;
bad.shouldDismissOnTapOutside = NO;
bad.backgroundType = SCLAlertViewBackgroundBlur;
bad.cornerRadius = 10.0f;
bad.backgroundViewColor = [UIColor colorWithRed: 0.99 green: 0.45 blue: 0.42 alpha: 1.00];

SCLAlertView *nice = [[SCLAlertView alloc] initWithNewWindowWidth:250];

nice.customViewColor = [UIColor colorWithRed: 0.66 green: 0.88 blue: 0.39 alpha: 1.00];
nice.showAnimationType = SCLAlertViewShowAnimationFadeIn;
alert.hideAnimationType = SCLAlertViewHideAnimationFadeOut;
nice.shouldDismissOnTapOutside = NO;
nice.backgroundType = SCLAlertViewBackgroundBlur;
nice.cornerRadius = 10.0f;
nice.backgroundViewColor = [UIColor colorWithRed: 0.99 green: 0.45 blue: 0.42 alpha: 1.00];



   [nice addButton: @"STETUP MENU" actionBlock: ^(void) {
      timer(1) {
       setupMenu();
      });
    }];    

NSString *loggedin = [check stringForKey:@"TGHOANG"];
timer(2) {
if([loggedin isEqualToString:@"1"]) {
[nice showSuccess:@"You're Logged In!               Welcome!" subTitle:@"\n Created by Letovsky" closeButtonTitle:nil duration:999999999.0f];
[nice.view setTintColor:[UIColor yellowColor]];

}
});

UITextField *text1 = [alert addTextField:@"KEY:TGHOANG"];

[alert addButton:@"OPEN HACK" actionBlock:^ (void) {
if ([text1.text isEqualToString:@"TGHOANG"] ) {
[check setObject:@"1" forKey:@"TGHOANG"];
[check synchronize];
timer(1) {
[nice showSuccess:@"TGHOANG ANTIBAN FREE" subTitle:@"TGHOANG"
closeButtonTitle:nil duration:999999999.0f];


});
}
else
{
timer(1) {
[bad showError:@"Wrong Username or Pasword Game will crash now,After that you can try again" subTitle:@"\nTGHOANG" closeButtonTitle:nil duration:999999999.0f];
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1.4 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
exit(0);
});
});
}
}];

if(![loggedin isEqualToString:@"1"]) 

{NSData* data = [[NSData alloc] initWithBase64EncodedString:@"BASE64 IMAGE HERE " options:0];
UIImage* customAlertImage = [UIImage imageWithData:data];   

[alert showCustom:alert image:customAlertImage color:[UIColor blueColor] title:@"TGHOANG" subTitle:@"\nEnter Key To Open Hack                 KEY: TGHOANG" closeButtonTitle:nil duration:9999999999.0f];
}
});
} 

# UIAlertView - Objective-C

Animated Login Alert View written in Swift but ported to Objective-C, which can be used as a `UIAlertView` or `UIAlertController` replacement.

![BackgroundImage](https://i.ibb.co/wzqjwCB/9-FC77-F02-20-A1-45-DB-AD1-C-5-D52-A8-F480-B6.jpg)

### Add buttons
```Objective-C
SCLAlertView *alert = [[SCLAlertView alloc] init];
//Using Selector
[alert addButton:@"First Button" target:self selector:@selector(firstButton)];
//Using Block
[alert addButton:@"Second Button" actionBlock:^(void) {
    NSLog(@"Second button tapped");
}];
//Using Blocks With Validation
[alert addButton:@"Validate" validationBlock:^BOOL {
    BOOL passedValidation = ....
    return passedValidation;
} actionBlock:^{
    // handle successful validation here
}];
[alert showSuccess:self title:@"Button View" subTitle:@"This alert view has buttons" closeButtonTitle:@"Done" duration:0.0f];
```

### Add button timer
```Objective-C
//The index of the button to add the timer display to.
[alert addTimerToButtonIndex:0 reverse:NO];
```


### Add a switch button
```Objective-C
SCLAlertView *alert = [[SCLAlertView alloc] init];
    
SCLSwitchView *switchView = [alert addSwitchViewWithLabel:@"Don't show again".uppercaseString];
switchView.tintColor = [UIColor brownColor];
    
[alert addButton:@"Done" actionBlock:^(void) {
    NSLog(@"Show again? %@", switchView.isSelected ? @"-No": @"-Yes");
}];
    
[alert showCustom:self image:[UIImage imageNamed:@"switch"] color:[UIColor brownColor] title:kInfoTitle subTitle:kSubtitle closeButtonTitle:nil duration:0.0f];
```

### Add custom view
```Objective-C
SCLAlertView *alert = [[SCLAlertView alloc] init];
UIView *customView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 215.0f, 80.0f)];
customView.backgroundColor = [UIColor redColor];
[alert addCustomView:customView];
[alert showNotice:self title:@"Title" subTitle:@"This alert view shows a custom view" closeButtonTitle:@"Done" duration:0.0f];
```


### Helpers
```Objective-C
//Receiving information that SCLAlertView is dismissed
[alert alertIsDismissed:^{
    NSLog(@"SCLAlertView dismissed!");
}];
```


### Thanks to the original team
- Code [@Thesxfter] (https://t.me/tweakdev) Letovsky

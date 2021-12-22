//
//  UIAlert.m
//  
//
//  Created by Letovsky on 23/12/2021.
//  Copyright (c) 2021 AnyKey Entertainment. All rights reserved.
//

UIAlertController *Login = [UIAlertController alertControllerWithTitle:@"Made By @TheSxfter" message:nil preferredStyle:UIAlertControllerStyleAlert];

[Login addTextFieldWithConfigurationHandler:^(UITextField *Text) {
Text.placeholder = @"Your verification code";
}];

UIAlertAction *LOGIN = [UIAlertAction
actionWithTitle:@"Unlock" style:UIAlertActionStyleDefault
handler:^(UIAlertAction * _Nonnull action) {

UITextField *text = Login.textFields.firstObject;
if ([text.text isEqualToString:@"Letovsky#6664"]) {

UIAlertController *Nice = [UIAlertController alertControllerWithTitle:@"You have passed verification! \n Verification was created by \n @thesxfter" message:nil preferredStyle:UIAlertControllerStyleAlert];

UIAlertAction *Done = [UIAlertAction
actionWithTitle:@"Understood" style:UIAlertActionStyleDefault
handler:^(UIAlertAction * action) {}];

[Nice addAction:Done];

[[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:Nice animated:true completion:nil];

}else{

UIAlertController *Error = [UIAlertController alertControllerWithTitle:@"Error#2 \n\n The code its wrong \n\n Contact the Letovsky developer" message:nil preferredStyle:UIAlertControllerStyleAlert];

[[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:Error animated:true completion:nil];

dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
exit(3);
});
}
}];

[Login addAction:LOGIN];

[[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:Login animated:true completion:nil];
});
}


//
//  AlertUtility.m
//  AlertHomework
//
//  Created by Erkki Nokso+Koivisto on 04/12/2018.
//  Copyright © 2018 In4mo. All rights reserved.
//

#import "AlertUtility.h"

@implementation AlertUtility

+ (id)showAlertWithTitle:(nullable NSString *) title
              andMessage:(nullable NSString *) message
         andButtonTitles:(NSArray <NSString *> *) buttonTitles
             andDelegate: (_Nullable id) delegate {
    NSLog(@"alert presented in Objective-C");
    
    UIAlertController *alert = [UIAlertController
                                alertControllerWithTitle:title
                                message:message
                                preferredStyle:UIAlertControllerStyleAlert];
    NSUInteger index = 0;
    for (NSString* currentString in buttonTitles) {
//        NSLog(@"%@", currentString);
        UIAlertAction* myButton = [UIAlertAction
                                    actionWithTitle:currentString
                                    style:UIAlertActionStyleDefault
                                    handler:^(UIAlertAction * action) {
                                        //Handle your button action here
                                        NSNumber *theNumber = [NSNumber numberWithInt:index];
                                        
                                        @try {
                                            [delegate performSelector: @selector(alertControllerButtonSelected:andIndex:) withObject:currentString withObject:theNumber];
                                        }
                                        
                                        @catch ( NSException *e ) {
                                            NSLog(@"Couldn't execute the function, maybe it does not exist");
                                        }
                                    }];
        [alert addAction:myButton];
        index++;
    }
    
    [delegate presentViewController:alert animated:true completion:nil];
    return delegate;
}

@end

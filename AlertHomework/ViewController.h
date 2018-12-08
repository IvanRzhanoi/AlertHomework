//
//  ViewController.h
//  AlertHomework
//
//  Created by Erkki Nokso+Koivisto on 04/12/2018.
//  Copyright © 2018 In4mo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HomeworkAlertDelegate;

@interface ViewController : UIViewController<HomeworkAlertDelegate, UIAlertViewDelegate>

- (void)alertControllerButtonSelected:(NSString *) title
                             andIndex:(NSNumber *) index;

- (void)alertValueSelectedWithTitle:(NSString *) title
                   andIndex:(NSNumber *) index;

@end


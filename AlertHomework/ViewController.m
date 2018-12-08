//
//  ViewController.m
//  AlertHomework
//
//  Created by Erkki Nokso+Koivisto on 04/12/2018.
//  Copyright © 2018 In4mo. All rights reserved.
//

#import "ViewController.h"
#import "AlertUtility.h"
#import "AlertHomework-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"title"
//        message:@"message"
//        delegate:self
//        cancelButtonTitle:@"OK"
//        otherButtonTitles:nil];
//    [alert1 show];
}

- (void)viewDidAppear:(BOOL)animated {
    // Objective-C
//    [AlertUtility showAlertWithTitle:@"title" andMessage:@"message" andButtonTitles:@[@"OK", @"Cancel"] andDelegate:self];
    
    // Swift with bridging header
    SwiftyAlertUtility *swiftyAlert = [[SwiftyAlertUtility alloc]init];
    swiftyAlert.delegate = self;
    [swiftyAlert showAlertWithTitle:@"title" andMessage:@"message" andButtonTitles:@[@"OK", @"Cancel"]];
}

- (void)alertControllerButtonSelected:(NSString *) title
                             andIndex:(NSNumber *) index {
    NSLog(@"\"%@\" button with index %@ is pressed", title, index);
}

- (void)alertValueSelectedWithTitle:(NSString *) title
                   andIndex:(NSNumber *) index {
    NSLog(@"\"%@\" button with index %@ is pressed", title, index);
}

//- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
//{
//    NSLog(@"alert button pressed %@ %tu", alertView, buttonIndex);
//}

@end

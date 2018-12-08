//
//  AlertUtility.h
//  AlertHomework
//
//  Created by Erkki Nokso+Koivisto on 04/12/2018.
//  Copyright © 2018 In4mo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AlertUtility : NSObject
+(id)showAlertWithTitle:(nullable NSString*) title
             andMessage:(nullable NSString*) message
        andButtonTitles:(NSArray<NSString*>*) buttonTitles
            andDelegate: (_Nullable id) delegate;
@end

NS_ASSUME_NONNULL_END

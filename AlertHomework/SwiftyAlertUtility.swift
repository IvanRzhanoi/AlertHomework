//
//  SwiftyAlertUtility.swift
//  AlertHomework
//
//  Created by Ivan Rzhanoi on 07/12/2018.
//  Copyright © 2018 In4mo. All rights reserved.
//

import UIKit

@objc class SwiftyAlertUtility: NSObject {
    
    @objc var delegate: HomeworkAlertDelegate?
    
    @objc func showAlert(withTitle: String, andMessage: String, andButtonTitles: [String]) {    //}, andDelegate: AnyObject) {
        let alert = UIAlertController(title: withTitle, message: andMessage, preferredStyle: .alert)
        
        var index = 0
        for buttonTitle in andButtonTitles {
            alert.addAction(UIAlertAction(title: buttonTitle, style: .default, handler: { action in
                let number = index as NSNumber
                self.delegate?.alertValueSelected(withTitle: buttonTitle, andIndex: number)
            }))
            
            index += 1
        }
        
//        andDelegate.present(alert, animated: true, completion: nil)
        
        (self.delegate as! UIViewController).present(alert, animated: true, completion: nil)
    }
}

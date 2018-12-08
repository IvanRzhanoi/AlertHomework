//
//  AlertDelegate.swift
//  AlertHomework
//
//  Created by Ivan Rzhanoi on 07/12/2018.
//  Copyright © 2018 In4mo. All rights reserved.
//

import Foundation

@objc protocol HomeworkAlertDelegate {
    func alertValueSelected(title: String, index: Int)
}

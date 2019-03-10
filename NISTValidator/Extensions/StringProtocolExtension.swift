//
//  StringProtocolExtension.swift
//  NISTValidator
//
//  Created by Hector Castillo on 3/8/19.
//  Copyright © 2019 Hector Castillo. All rights reserved.
//

import Foundation

extension StringProtocol where Index == String.Index {
    var validNIST : Bool {
        return self.range(of: "[ -~]{8,64}", options: .regularExpression) != nil
    }
}

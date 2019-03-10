//
//  NISTValidator.swift
//  NISTValidator
//
//  Created by Hector Castillo on 3/9/19.
//  Copyright © 2019 Hector Castillo. All rights reserved.
//

import Foundation

open class NISTValidator {
    
    public static func validate( password: String, useCustomList: Bool) -> Bool {
        if password.validNIST {
            if isNotCommon(password: password, useCustomList: useCustomList) {
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }
    
    static func isNotCommon( password: String, useCustomList: Bool) -> Bool {
        if let contents = retrieveCommonPasswords(useCustomList: useCustomList) {  //attemtp to retrieve the list of common passwords
            if contents.range(of: password) != nil {  //if the range exists the password is common
                return false
            } else {
                return true
            }
        }
        return true  //if no list of common passwords exists return true as password is not common
    }
    
    static func retrieveCommonPasswords(useCustomList: Bool) -> String? {
        var bundle = Bundle(for: self)//Bundle(identifier: "hector.codes.NISTValidator")
        if useCustomList{
            bundle = Bundle.main} else {
            if let bundleURL = bundle.url(forResource: "NISTValidator", withExtension: "bundle") {
                if let testBundle = Bundle.init(url: bundleURL){
                    bundle = testBundle
                }
            }
        }
        
        if let filepath = bundle.path(forResource: "CommonPasswordList", ofType: "txt") {  //set the filepath to the common password list
            do {
                let contents = try String(contentsOfFile: filepath)  //set the contents of the password list to a string
                return contents
            } catch {
                return nil//contents could not be loaded
            }
        } else {
            return nil
        }
    }
}

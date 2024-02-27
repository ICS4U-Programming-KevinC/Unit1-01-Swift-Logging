//
//  Logging.swift
//
//  Created by Kevin Csiffary
//  Created on 2024-02-26
//  Version 1.0
//  Copyright (c) 2024 Kevin Csiffary. All rights reserved.
//
//  How many logs go in the truck?

import Foundation

let SHORT_LOG: Float = 0.25
let MED_LOG: Float = 0.5
let LONG_LOG: Float = 1.0

enum InputError: Error {
    case nonNumber
}

do {
    print("Enter the length of the logs (0.25, 0.5, or 1):")
    guard let logLengthString = readLine() else {
        throw InputError.nonNumber
    }

    guard let logLengthFloat = Float(logLengthString) else {
        throw InputError.nonNumber
    }

    if logLengthFloat == LONG_LOG {
        print("You can have " + String((1100 / 20) / logLengthFloat) + " logs of length 1m in your truck.")
    } else if logLengthFloat == MED_LOG {
    print("You can have " + String((1100 / 20) / logLengthFloat) + " logs of length 1m in your truck.")
    } else if logLengthFloat == SHORT_LOG {
        print("You can have " + String((1100 / 20) / logLengthFloat) + " logs of length 1m in your truck.")
    } else {
        print("Please enter either 0.25, 0.5, or 1")
    }
} catch InputError.nonNumber {
    print("Please enter either 0.25, 0.5, or 1")
}

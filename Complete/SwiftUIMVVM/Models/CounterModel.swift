//
//  CounterModel.swift
//  SwiftUIMVVM
//
//  Created by 松本和也 on 2020/06/30.
//  Copyright © 2020 松本和也. All rights reserved.
//

import Foundation

struct CounterModel {
    
    public static func incrmentCount(currentCount: Int) -> Int {
        return currentCount + 1
    }
    
    public static func decrementCount(currentCount: Int) -> Int {
        currentCount - 1
    }

}

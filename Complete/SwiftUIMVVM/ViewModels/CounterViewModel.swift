//
//  CounterViewModel.swift
//  SwiftUIMVVM
//
//  Created by 松本和也 on 2020/06/30.
//  Copyright © 2020 松本和也. All rights reserved.
//

import Foundation

class CounterViewModel: ObservableObject {
    // Store count for view
    @Published var count = 0
    
    // countUp method for View
    public func countUp() {
        // call CounterModel methods and update its count with result
        count = CounterModel.incrmentCount(currentCount: count)
    }
        
    // countDown method for View
    public func countDown() {
        // call CounterModel methods and update its count with result
        count = CounterModel.decrementCount(currentCount: count)
    }
}

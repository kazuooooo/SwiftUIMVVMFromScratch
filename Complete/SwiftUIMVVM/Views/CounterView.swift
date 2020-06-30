//
//  CounterView.swift
//  SwiftUIMVVM
//
//  Created by 松本和也 on 2020/06/30.
//  Copyright © 2020 松本和也. All rights reserved.
//

import SwiftUI

struct CounterView: View {
    // Data binding with CounterView Model
    @EnvironmentObject var counterViewModel: CounterViewModel
    
    var body: some View {
        return VStack {
            // count value updated automatically by data binding
            Text(String(self.counterViewModel.count))
            HStack {
                Button("+", action: {
                    self.counterViewModel.countUp()
                })
                Button("-", action: {
                    self.counterViewModel.countDown()
                })
            }
        }
    }
}

struct CountView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView().environmentObject(CounterViewModel())
    }
}

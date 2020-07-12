//
//  UpdateStore.swift
//  DesignCode
//
//  Created by Harry Twan on 2020/7/12.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
    
    
}

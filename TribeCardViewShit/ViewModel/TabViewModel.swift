//
//  TabViewModel.swift
//  TribeCardViewShit
//
//  Created by Noah Bland on 12/13/20.
//

import SwiftUI

class TabViewModel: ObservableObject {
    
    @Published var selectedItem : Item!
    @Published var isDetail = false

}


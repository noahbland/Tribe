//
//  Item.swift
//  TribeCardViewShit
//
//  Created by Noah Bland on 12/11/20.
//

import SwiftUI

struct Item: Identifiable {
    
    var id = UUID().uuidString
    var title: String
    var sport: String
    var age: String
    var image: String
}

//
//  MotivationCategory.swift
//  Dominate Your Mind
//
//  Created by Andrei Gavrilenko on 17.08.2025.
//

import Foundation

struct MotivationCategory {
    let id: UUID = UUID()
    var title: String
    var systemName: String
    var icon: String? = nil
    var color: String? = nil
    var images: [MotivationImage] = []
}

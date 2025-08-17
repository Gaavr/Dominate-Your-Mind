//
//  MotivationImage.swift
//  Dominate Your Mind
//
//  Created by Andrei Gavrilenko on 17.08.2025.
//

import Foundation

struct MotivationImage {
    var id: UUID = UUID()
    var category: String
    var imageName: String
    var isLiked: Bool = false
    var dateAdded: Date
}

//
//  TextStyle.swift
//  Dominate Your Mind
//
//  Created by Andrei Gavrilenko on 05.09.2025.
//
import SwiftUI

enum OverlayKind { case viewver, categories, settings }

struct TextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title.weight(.bold))
            .foregroundStyle(.primary)
            .padding()
            .kerning(0.5)
    }
}

extension View { func TitleStyle() -> some View { modifier(TextStyle()) }}

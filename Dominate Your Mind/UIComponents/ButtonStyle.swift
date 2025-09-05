//
//  DefaultCapsuleButton.swift
//  Dominate Your Mind
//
//  Created by Andrei Gavrilenko on 05.09.2025.
//
import SwiftUI

struct ButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 250, height: 60)
            .foregroundStyle(.primary)
            .background(.ultraThinMaterial.opacity(0.90), in: Capsule()) // полупрозрачный материал/форма
            .overlay(Capsule().stroke(.white.opacity(0.20), lineWidth: 2)) // ободок кнопки
            .contentShape(Capsule())
    }
}

extension View { func buttonStyle() -> some View {modifier(ButtonStyle())}}

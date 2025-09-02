//
//  ViewerView.swift
//  Dominate Your Mind
//
//  Created by Andrei Gavrilenko on 01.09.2025.
//

import SwiftUI

struct ViewerView: View {
    
    var action: () -> Void
    let burgerSymbol: String = "line.3.horizontal"
    
    var body: some View {
        ZStack {
            ZStack {
                Button(action: action) {
                            Image(systemName: burgerSymbol)
                                .font(.system(size: 30, weight: .bold))
                                .foregroundStyle(.black)
                                .padding(25) //размер пикчи
                        }
                .background(.ultraThinMaterial.opacity(0.90), in: Circle()) // полупрозрачный материал/форма
                .overlay(Circle().stroke(.white.opacity(0.20), lineWidth: 2)) // ободок кнопки
                .contentShape(Circle()) // хит зона
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Image("commonImg6")
                .resizable()
                .scaledToFill()
        )
        .ignoresSafeArea()
    }
}

#Preview {
    ViewerView(action: { print("tap") })
}

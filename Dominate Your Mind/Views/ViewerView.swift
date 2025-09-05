//
//  ViewerView.swift
//  Dominate Your Mind
//
//  Created by Andrei Gavrilenko on 01.09.2025.
//

import SwiftUI

struct ViewerView: View {
    
    
    
    @State private var imgsIndex = 0
    private let imgs = ["commonImg1", "commonImg2", "commonImg3", "commonImg4", "commonImg5", "commonImg6", "commonImg7" ,"commonImg8" ,"commonImg9" ,"commonImg10"].shuffled()
    @State private var i = 0
    
    var body: some View {
        VStack() {
            Spacer()
            HStack() {
                Spacer()
                ParametersButton(action: { print("tap") })
//                ParametersBlock()
                
            }
            .safeAreaPadding(.trailing, 25)
            .safeAreaPadding(.bottom, 25)
        }
        .background(
            Image(imgs[imgsIndex])
                .resizable()
                .scaledToFill()
                .highPriorityGesture(
                    DragGesture().onEnded { value in
                        if value.translation.width < -80 { imgsIndex = min(imgsIndex + 1, imgs.count - 1) }
                        if value.translation.width >  80 { imgsIndex = max(imgsIndex - 1, 0) }
                    }
                )
            
        )
        .ignoresSafeArea()
        
    }
}

fileprivate struct ParametersButton: View {
    let burgerSymbol: String = "line.3.horizontal"
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: burgerSymbol)
                .font(.system(size: 30, weight: .bold))
                .foregroundStyle(.black)
                .padding(30) //размер пикчи
        }
        .background(.ultraThinMaterial.opacity(0.90), in: Circle()) // полупрозрачный материал/форма
        .overlay(Circle().stroke(.white.opacity(0.20), lineWidth: 2)) // ободок кнопки
        .contentShape(Circle()) // хит зона
    }
}

fileprivate struct ParametersBlock: View {
    var title: String = "Параметры"
    var currentCategoryTitle: String = "Выбранная категория: "
    var carrentCategory: String = "Саморазвитие" //TODO: передавать MotivationCategory.title
    
    var body: some View {
        VStack {
            Text(title)
                .TitleStyle()
            VStack(alignment: .leading, spacing: 2) {
                Text(currentCategoryTitle)
                Text(carrentCategory)
                    
            }
            Button("Категории") {}
                .buttonStyle()
            Button("Настройки") {}
                .buttonStyle()
        }
        .padding()
        .background(.ultraThinMaterial.opacity(0.90), in: RoundedRectangle(cornerRadius: 16))
    }
}


#Preview {
    ViewerView()
}

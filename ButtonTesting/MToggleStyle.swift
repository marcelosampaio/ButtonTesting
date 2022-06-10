//
//  MToggleStyle.swift
//  ButtonTesting
//
//  Created by Marcelo Sampaio on 10/06/22.
//

import SwiftUI

struct MToggleStyle: ToggleStyle {
    private var onColor = Color.yellow
    private var offColor = Color(UIColor.systemGray5)
    private var circleColor = Color.white
    
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            Spacer()
            Button(action: { configuration.isOn.toggle() } )
            {
                RoundedRectangle(cornerRadius: 16, style: .circular)
                    .fill(configuration.isOn ? onColor : offColor)
                    .frame(width: 50, height: 29)
                    .overlay(
                        Circle()
                            .fill(circleColor)
                            .shadow(radius: 1, x: 0, y: 1)
                            .padding(1.5)
                            .offset(x: configuration.isOn ? 10 : -10))
                    .animation(Animation.easeInOut(duration: 0.1))
            }
            Spacer()
        }
        .font(.title)
        .padding(.horizontal)
    }
}


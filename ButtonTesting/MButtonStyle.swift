//
//  MButtonStyle.swift
//  ButtonTesting
//
//  Created by Marcelo Sampaio on 10/06/22.
//

import SwiftUI

enum StyleType {
    case primary, secondary, tertiary
}

struct MButtonStyle: ButtonStyle {
    let text: String
    let style: StyleType
    
    init(text: String, style: StyleType) {
        self.text = text
        self.style = style
    }
    
    
    private var offColor = Color(UIColor.systemGray5)
    private var circleColor = Color.white
    
    func makeBody(configuration: Self.Configuration) -> some View {
        if style == .primary {
            primaryButton
        }else if style == .secondary {
            secondaryButton
        }else if style == .tertiary {
            tertiaryButton
        }

    }
}

// MARK: - Primary Button
extension MButtonStyle {
    var primaryButton: some View {
        ZStack {
            Button(action: {})
            {
                RoundedRectangle(cornerRadius: 8, style: .circular)
                    .fill(.yellow)
                    .frame(width: .infinity, height: 48, alignment: .center)
            }
            
            Text(text)
                .frame(width: .infinity, height: 29, alignment: .center)
                .foregroundColor(.white)
            
            Button(action: {})
            {
                RoundedRectangle(cornerRadius: 8, style: .circular)
                    .fill(.clear)
                    .frame(width: .infinity, height: 48, alignment: .center)
            }
            
            
            
        }
        .font(.title)
        .padding(.horizontal)
    }
}

// MARK: - Secondary Button
extension MButtonStyle {
    var secondaryButton: some View {
        ZStack {
            Button(action: {})
            {
                RoundedRectangle(cornerRadius: 8, style: .circular)
                    .fill(.red)
                    .frame(width: .infinity, height: 48, alignment: .center)
            }
            
            Text(text)
                .frame(width: .infinity, height: 29, alignment: .center)
                .foregroundColor(.white)
            
            Button(action: {})
            {
                RoundedRectangle(cornerRadius: 8, style: .circular)
                    .fill(.clear)
                    .frame(width: .infinity, height: 48, alignment: .center)
            }
            
            
            
        }
        .font(.title)
        .padding(.horizontal)
    }
}


// MARK: - Tertiary Button
extension MButtonStyle {
    var tertiaryButton: some View {
        // 📍 Button
        VStack {
            HStack {
                Button(action: {
                    print("📍 tertiary button was tapped")
                }){
                    Text(text)
                        .underline()
                        .font(.system(size: 20, weight: .bold, design: .default))
                }
            }
        }
        
    }
}

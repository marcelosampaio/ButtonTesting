//
//  ContentView.swift
//  ButtonTesting
//
//  Created by Marcelo Sampaio on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    @State var isOn: Bool
    var body: some View {
        
        VStack{
            // 📍 Toggle
            Toggle(String(), isOn: $isOn)
                .padding()
                .toggleStyle(MToggleStyle())
                .labelsHidden()

            // 📍 primary button
            Button(String()) {
                print("Primary Button pressed!")
            }
            .buttonStyle(MButtonStyle(text: "This is PrimaryButton", style: .primary))
            .foregroundColor(.clear)
            
            
            // 📍 secondary button
            Button(String()) {
                print("Secondary Button pressed!")
            }
            .buttonStyle(MButtonStyle(text: "This is SecondaryButton", style: .secondary))
            .foregroundColor(.clear)
            
            
            // 📍 tertiary button
            Button(String()) {
                print("Tertiary Button pressed!")
            }
            .buttonStyle(MButtonStyle(text: "This is TertiaryButton", style: .tertiary))
            .foregroundColor(.green)
            
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(isOn: false)
    }
}

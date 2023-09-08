//
//  ContentView.swift
//  mad
//
//  Created by Namratha on 8/31/23.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0.0
    @State private var isRotationEnabled: Bool = false
    
    var body: some View {
        ZStack {
            Color(red:0, green:0, blue: 0)
                .ignoresSafeArea()
            
            VStack {
                // Rotate the Earth with the help of a slider
                RotationControlView(rotation: $rotation, isRotationEnabled: $isRotationEnabled)
                
                // Additionally, rotate the earth by clicking it in 45 degrees
                Image("world")
                    .resizable()
                    .cornerRadius(15)
                    .clipShape(RoundedRectangle(cornerRadius: 100))
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .rotationEffect(.degrees(rotation))
                    .onTapGesture {
                        withAnimation{
                            if isRotationEnabled {
                                rotation += 45.0
                            }
                        }
                    }
                
                Text("Hello World!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("(Tap to rotate the Earth)")
                    .foregroundColor(.white)
            }
        }
    }
}

struct RotationControlView: View {
    @Binding var rotation: Double
    @Binding var isRotationEnabled: Bool
    
    var body: some View {
        VStack {
            Toggle("Rotate Earth", isOn: $isRotationEnabled)
                .foregroundColor(.white)
                .padding()
            
            if isRotationEnabled {
                Slider(value: $rotation, in: 0.0...360.0, step: 1.0) {
                    Text("Rotation")
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

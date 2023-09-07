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
    @State private var lastRotationAngle: Double = 0.0
    
    var body: some View {
        ZStack {
            Color(red:0, green:0, blue: 0)
                .ignoresSafeArea()
            
            VStack {
                Toggle("Rotate Earth", isOn: $isRotationEnabled)
                    .foregroundColor(.white)
                    .padding()
                    .onChange(of: isRotationEnabled) { newValue in
                            lastRotationAngle = rotation
                    }
                
                Image("world")
                    .resizable()
                    .cornerRadius(15)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

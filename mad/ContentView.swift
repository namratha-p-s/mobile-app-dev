//
//  ContentView.swift
//  mad
//
//  Created by Namratha on 8/31/23.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0.0
    
    var body: some View {
        ZStack {
            Color(red:0, green:0, blue: 0)
                .ignoresSafeArea()
            
            VStack {
                Image("world")
                    .resizable()
                    .cornerRadius(15)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .rotationEffect(.degrees(rotation))
                    .onTapGesture {
                        withAnimation{rotation += 45.0}
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

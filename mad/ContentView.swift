//
//  ContentView.swift
//  mad
//
//  Created by Namratha on 8/31/23.
//

import SwiftUI

struct ContentView: View {
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
                Text("Hello World!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
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

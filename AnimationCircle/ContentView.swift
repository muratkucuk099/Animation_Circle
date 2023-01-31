//
//  ContentView.swift
//  AnimationCircle
//
//  Created by Mac on 19.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State var moving = false
    
    var body: some View {
        ZStack {
            Circle()
                 .stroke(lineWidth: 5)
                 .frame(width: 20, height: 20)
                 .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                 .offset(y: moving ? 150 : -180)
                 .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true), value: moving)
            
            Circle()
                 .stroke(lineWidth: 5)
                 .frame(width: 50, height: 50)
                 .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                 .offset(y: moving ? 150 : -180)
                 .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.05), value: moving)
            
            Circle()
                 .stroke(lineWidth: 5)
                 .frame(width: 80, height: 80)
                 .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                 .offset(y: moving ? 150 : -180)
                 .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.1), value: moving)
            
            Circle()
                 .stroke(lineWidth: 5)
                 .frame(width: 110, height: 110)
                 .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                 .offset(y: moving ? 150 : -180)
                 .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.15), value: moving)
            
            Circle()
                 .stroke(lineWidth: 5)
                 .frame(width: 140, height: 140)
                 .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                 .offset(y: moving ? 150 : -180)
                 .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.2), value: moving)
            
            Circle()
                 .stroke(lineWidth: 5)
                 .frame(width: 170, height: 170)
                 .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                 .offset(y: moving ? 150 : -180)
                 .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.25), value: moving)
            
            Circle()
                 .stroke(lineWidth: 5)
                 .frame(width: 200, height: 200)
                 .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                 .offset(y: moving ? 150 : -180)
                 .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.3), value: moving)
            
            Circle()
                 .stroke(lineWidth: 5)
                 .frame(width: 230, height: 230)
                 .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
                 .offset(y: moving ? 150 : -180)
                 .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.35), value: moving)
          
        }
        .onAppear{
            moving.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            
    }
}

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
            ExtractedView(movingValue: moving, size: 20, delay: 0.0)
            ExtractedView(movingValue: moving, size: 50, delay: 0.05)
            ExtractedView(movingValue: moving, size: 80, delay: 0.10)
            ExtractedView(movingValue: moving, size: 110, delay: 0.15)
            ExtractedView(movingValue: moving, size: 140, delay: 0.20)
            ExtractedView(movingValue: moving, size: 170, delay: 0.25)
            ExtractedView(movingValue: moving, size: 200, delay: 0.30)
            ExtractedView(movingValue: moving, size: 230, delay: 0.35)
          
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

struct ExtractedView: View {
    let movingValue: Bool
    let size: CGFloat
    let delay: Double
    var body: some View {
        Circle()
            .stroke(lineWidth: 5)
            .frame(width: size, height: size)
            .rotation3DEffect(.degrees(75), axis: (x: 1, y: 0, z: 0))
            .offset(y: movingValue ? 150 : -180)
            .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(delay), value: movingValue)
    }
}
//0.35 230

//
//  ContentView.swift
//  weatherApp
//
//  Created by Wadim Mikanowicz on 20/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            WeatherCardView()
        }.background(
            RadialGradient(
                stops: [
                    Gradient.Stop(color: Color(red: 0.71, green: 0.89, blue: 0.85), location: 0.50),
                    Gradient.Stop(color: Color(red: 0.56, green: 0.84, blue: 0.77), location: 1.00)
                    ],
                center: .center,
                startRadius: 35,
                endRadius: 250)
        )
    }
}

#Preview {
    ContentView()
}

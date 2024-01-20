//
//  WeatherCardView.swift
//  weatherApp
//
//  Created by Wadim Mikanowicz on 20/01/2024.
//

import SwiftUI

struct WeatherCardView: View {
    var body: some View {
        VStack{
            HStack{
                Text("weather status")
                Text("menu")
            }
            
            Image(systemName: "sun.rain.fill")
                .resizable()
                .frame(width: 200, height: 200)
            
            HStack{
                VStack{
                    Text("town, country")
                    Text("13")
                    Text("feels like 12")
                }
                Text("tues")
                Text("wen")
                Text("thurs")
                Text("fri")
            }
        }
    }
}

#Preview {
    WeatherCardView()
}

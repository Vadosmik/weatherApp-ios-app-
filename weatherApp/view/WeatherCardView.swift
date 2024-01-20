//
//  WeatherCardView.swift
//  weatherApp
//
//  Created by Wadim Mikanowicz on 20/01/2024.
//

import SwiftUI

struct WeatherCardView: View {
    
    var weatherStatus = "Sun"
    var weatherIconToday = "sun"
    var deegresToday = "12°"
    var whereAreYou = "Gdynia, Polond"
    
    var weatherIconNextDay = "cloud"
    var deegresNextDay = "10°"
    
    var body: some View {
        VStack{
            HStack{
                Text(weatherStatus)
                    .font(.custom("Helvetic", fixedSize: 64))
                Spacer()
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .frame(width: 25, height: 15)
            }.padding(20)
            Spacer()
            
            Image(weatherIconToday)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 230)
                .padding(40)
            
            Spacer()
            HStack{
                VStack{
                    Text(whereAreYou)
                        .fontWeight(.heavy)
                        .position(x: 65, y: 10)
                    Text(deegresToday)
                        .font(.custom("Helvetic", fixedSize: 64))
                        .position(x: 49, y: 25)
                    Text("feels like " + deegresToday)
                        .position(x: 50, y: 20)
                }.frame(width: 150, height: 150)
                Spacer()
                VStack {
                    Spacer()
                    HStack{
                        NextDayCard(weatherIcon: weatherIconNextDay, deegres: deegresNextDay)
                        NextDayCard(weatherIcon: weatherIconNextDay, deegres: deegresNextDay)
                        NextDayCard(weatherIcon: weatherIconNextDay, deegres: deegresNextDay)
                    }
                }.frame(height: 110)
            }.padding(.horizontal, 20)
                .padding(.bottom, 20)
        }
    }
}

#Preview {
    WeatherCardView()
}

struct NextDayCard: View {
    
    var weatherIcon: String
    var deegres: String
    
    var body: some View {
        VStack {
            Text("thusday")
                .font(.custom("Helvetic", fixedSize: 14))
            Image(weatherIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 30)
            Text(deegres)
                .font(.custom("Helvetic", fixedSize: 14))
        }.frame(width: 65, height: 65)
    }
}

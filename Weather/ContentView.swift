//
//  ContentView.swift
//  Weather
//
//  Created by joao camargo on 06/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue,Color("lightBlue")]),startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium,design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill").renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:180, height:180)
                    
                    Text("76").font(.system(size: 70, weight: .medium)).foregroundColor(.white)
                    
                }.padding(.bottom,40)
                
                
                HStack(spacing:30) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 75)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.rain.fill", temperature: 88)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 25)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sun.max.fill", temperature: 16)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "sunset.fill", temperature: 23)

                }
                
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek).font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.white)
            Image(systemName: imageName).renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:40, height:40)
            Text("\(temperature)").font(.system(size: 28, weight: .medium)).foregroundColor(.white)
            
        }
    }
}

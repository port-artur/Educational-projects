//
//  WelcomeView.swift
//  SmartWeather
//
//  Created by 🌚🌚 Царь🌚🌚 on 25.02.2022.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Добро пожаловать в Smart Weather")
                    .bold().font(.title)
                
                Text("Пожалуйста, поделитесь своим текущем местоположением что бы узнать погоду")
                    .padding()
            }.multilineTextAlignment(.center)
                .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }.cornerRadius(20)
                .symbolVariant(.fill)
                .foregroundColor(.white)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

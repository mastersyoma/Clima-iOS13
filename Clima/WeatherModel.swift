//
//  WeatherModel.swift
//  Clima
//
//  Created by Simon Sokurenko on 29/09/2025.
//  Copyright © 2025 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel: Codable {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var conditionName: String {
        return getConditionName(weatherId: conditionId)
    }
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    func getConditionName(weatherId: Int) -> String {
        switch weatherId {
        case 200...232:
            return "cloud.bolt.rain.fill"
        case 300...321:
            return "cloud.drizzle.fill"
        case 500...531:
            return "cloud.rain.fill"
        case 600...622:
            return "cloud.snow.fill"
        case 701...781:
            return "cloud.fog.fill"
        case 800:
            return "sun.max.fill"
        case 801...804:
            return "cloud.fill"
        default:
            return "cloud"
        }
    }
}

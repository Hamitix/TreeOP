//
//  WeatherRepositoryImpl.swift
//  TreeOP
//
//  Created by Dylan HAMITI on 25/04/2022.
//

import Foundation
import Resolver

struct WeatherRepositoryImpl: WeatherRepository {
    
    @Injected var dataSource: WeatherDataSource
    
    func getWeather(lat: Double, lng: Double) async throws -> Double {
        let temperature = try await dataSource.getTemperature(lat: lat, lng: lng)
        return temperature
    }
    
    func getAirQuality(lat: Double, lng: Double) async throws -> Int {
        let aqi = try await dataSource.getAirQuality(lat: lat, lng: lng)
        return aqi
    }
}

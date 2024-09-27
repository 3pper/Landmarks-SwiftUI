//
//  ModelData.swift
//  Landmarks
//
//  Created by Egor on 25.09.2024.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
    
    var featured: [Landmark] {
        landmarks.filter({ $0.isFeatured })
    }

}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Can't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Can't load \(file) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Coun't parse \(filename) as \(T.self): \n\(error)")
    }
}

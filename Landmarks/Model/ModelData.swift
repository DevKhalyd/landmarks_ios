//
//  ModelData.swift
//  Landmarks
//
//  Created by Rolando Garcia on 02/02/22.


import Foundation
// Contains the ObservableObject
import Combine


final class ModelData : ObservableObject {
   // Listen to changes now
   @Published var landmarks : [Landmark] = load("landmarkData.json")
}

func load<T:Decodable>(_ filename : String) -> T{
    
    // A byte buffer in memory.
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch{
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch{
        fatalError("Not implemented")
    }
}

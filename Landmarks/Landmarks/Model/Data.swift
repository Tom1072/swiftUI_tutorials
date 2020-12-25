//
//  Data.swift
//  Landmarks
//
//  Created by  Tom 107 on 2020-12-21.
//

import Foundation
import Combine

//This Observable Object will be passed into the environment to be used by the inherited Views of LandmarksApp.swift
final class ModelData: ObservableObject {
    //Published object will be watched by SwiftUI
    //Not Published object will NOT be watch by SwiftUI
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    
}

//Load Json file
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) in main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }

}

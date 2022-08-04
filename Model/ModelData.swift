/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Ha Minh Duc
  ID: 3878911
  Created  date: 20/07/2022
  Last modified: 06/08/2022
  Acknowledgement:
 -https://www.behance.net/gallery/63351389/Street-Vendors-The-Sidewalk-Cuisine-of-Vietnam
*/

import Foundation

var spots = decodeJsonFromJsonFile(jsonFileName: "spots.json")

func decodeJsonFromJsonFile(jsonFileName: String) -> [Spot] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil) {
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Spot].self, from : data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
            }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [Spot]
}

//
//  BirdsModel.swift
//  SwiftUI_ListView
//
//  Created by Atik Hasan on 3/20/25.
//

import Foundation

struct BirdsModel: Codable, Identifiable {
    var id = UUID() // Auto-generated, not from JSON
    var imageName: String
    var title: String
    var subtitle: String

    enum CodingKeys: String, CodingKey {
        case imageName, title, subtitle
    }

    static let birdsArray: [BirdsModel] = fetch()

    static func fetch() -> [BirdsModel] {
        guard let url = Bundle.main.url(forResource: "Datas", withExtension: "json") else {
            print("Could not find the JSON file.")
            return []
        }
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let birds = try decoder.decode([BirdsModel].self, from: data)
            return birds
        } catch {
            print("Error decoding the JSON data: \(error)")
            return []
        }
    }
}

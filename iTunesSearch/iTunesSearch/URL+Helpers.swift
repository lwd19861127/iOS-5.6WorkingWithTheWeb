//
//  URL+Helpers.swift
//  iTunesSearch
//
//  Created by WendaLi on 2020-05-18.
//  Copyright © 2020 Caleb Hicks. All rights reserved.
//

import Foundation

extension URL {
    
    func withQueries(_ queries: [String: String]) -> URL? {
        
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.flatMap { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}

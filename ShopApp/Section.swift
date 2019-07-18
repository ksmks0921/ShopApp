//
//  File.swift
//  ShopApp
//
//  Created by ujs on 7/18/19.
//

import Foundation

struct Section {
    var genre: String!
    var movies: [String]!
    var expanded: Bool!
    
    init(genre: String, movies:[String], expanded: Bool){
        self.genre = genre
        self.movies = movies
        self.expanded = expanded
    }
}

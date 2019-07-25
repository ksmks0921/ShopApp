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
    var background_image: String!
    
    
    init(genre: String, movies:[String], expanded: Bool, background_image: String){
        self.genre = genre
        self.movies = movies
        self.expanded = expanded
        self.background_image = background_image
    }
}

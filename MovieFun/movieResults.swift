//
//  movieResults.swift
//  AlamoFireDemo
//
//  Created by Yu-Hsuan Chen on 2018/6/24.
//  Copyright © 2018年 Frank.Chen. All rights reserved.
//

import Foundation
struct movieResults: Codable{
    struct Movie: Codable{
        var id: Int?
        var title: String?
        var poster_path: String?
        var backdrop_path: String?
        var vote_average: Float?
        var vote_count: Int?
        var release_date: String
        var overview: String?
        var genres_ids: [String]?
    }
    var total_results:Int
    var page:Int
    var results:[Movie]
    var total_pages:Int
}

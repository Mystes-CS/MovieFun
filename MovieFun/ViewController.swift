//
//  ViewController.swift
//  AlamoFireDemo
//
//  Created by Frank.Chen on 2017/3/11.
//  Copyright © 2017年 Frank.Chen. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    var movies = [movie]()
    var i:Int=0;
    override func viewDidLoad() {
        super.viewDidLoad()
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
        if let urlStr = "https://api.themoviedb.org/3/movie/upcoming?api_key=6ac4780523b1635d3bf190ca8b4658ce&language=zh-TW&page=1".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: urlStr) {
            
            let task = URLSession.shared.dataTask(with: url) { (data, response , error) in
                
                let decoder = JSONDecoder()
                
                decoder.dateDecodingStrategy = .iso8601
                
                if let data = data, let MovieResults = try?
                    decoder.decode(movieResults.self, from: data)
                {
                    
                    for Movie in MovieResults.results {
                        self.movies.append(movie(id:Movie.id, title:Movie.title,poster_path: Movie.poster_path, backdrop_path: Movie.backdrop_path, vote_average: Movie.vote_average, vote_count: Movie.vote_count, release_date: Movie.release_date, overview: Movie.overview, genres_ids: Movie.genres_ids))
                    }
                    
                } else {
                    
                    print("error")
                    
                }
            }
            task.resume()
        }
        /*  Alamofire.request("https:api.themoviedb.org/3/movie/upcoming?api_key=6ac4780523b1635d3bf190ca8b4658ce&language=zh-TW&page=1").responseJSON(completionHandler: { response in
         if response.result.isSuccess {
         //let json: JSON = JSON(data: response.data!)
         let json = response.data
         let decoder = JSONDecoder()
         decoder.dateDecodingStrategy = .iso8601
         if let data = json, let movieResults = try?
         decoder.decode(movieResults.self, from: data)
         
         {
         
         for Movie in movieResults.results {
         
         print(Movie)
         
         }
         
         } else {
         
         print("error")
         
         }
         
         //print(json)
         for i in 1...20 {
         var movie: Movie? = nil
         movie?.id = json["results"][i]["id"].int!
         movie?.releaseDate=json["results"][i]["release_date"].object as! NSDate
         movie?.genres = json["results"][i]["genre_ids"].arrayObject as! [String]
         movie?.posterPath = json["results"][i]["poster_path"].string!
         movie?.title = json["results"][i]["title"].string!
         if let movies[i] = movie {
         print(movie)
         }
         }
         } else {
         print("error: \(response.error)")
         }
         })*/
    }
}


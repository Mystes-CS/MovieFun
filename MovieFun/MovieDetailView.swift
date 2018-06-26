//
//  MovieDetailView.swift
//  AlamoFireDemo
//
//  Created by Yu-Hsuan Chen on 2018/6/25.
//  Copyright © 2018年 Frank.Chen. All rights reserved.
//

import UIKit

class MovieDetailView: UIView {
    @IBOutlet var backdropImageView: UIImageView!
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet var rateLabel: UILabel!
    var movie: movie!

    var contentHeight: CGFloat {
        get {
            return synopsisLabel.frame.maxY + 10
        }
    }
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        backgroundColor = UIColor(red:0, green:0, blue:0, alpha:1)
        if self.superview != nil {
            synopsisLabel.numberOfLines = 0
        }
    }
   /* @IBAction func AddMovie(_ sender: UIButton) {
        let notificationName = Notification.Name("GetMovie")
        NotificationCenter.default.post(name: notificationName, object: nil, userInfo: ["PASS":movie])
        print(movie.title)
        
        self.navigationController?.popViewController(animated: true)
    }*/
    func render(movie: movie) {
        self.movie = movie
        var url = URL(string: "https://image.tmdb.org/t/p/w300"+movie.backdrop_path!)
        var data = try! Data(contentsOf: url!)
        var newImage = UIImage(data: data)
        view.backgroundColor = UIColor(red:0, green:0, blue:0, alpha:1)
        backdropImageView.image = newImage
        url = URL(string: "https://image.tmdb.org/t/p/w300"+movie.poster_path!)
        data = try! Data(contentsOf: url!)
        newImage = UIImage(data: data)
        posterImageView.image = newImage
        synopsisLabel.text = movie.overview
        synopsisLabel.textColor = UIColor(red:1, green:1, blue:1, alpha:1)
        synopsisLabel.sizeToFit()
        title.text = movie.title
        title.textColor = UIColor(red:1, green:1, blue:1, alpha:1)
        title.sizeToFit()
        releaseDate.text = movie.release_date
        releaseDate.textColor = UIColor(red:1, green:1, blue:1, alpha:1)
        rateLabel.text = String(movie.vote_average!)
        rateLabel.textColor = UIColor(red:1, green:1, blue:1, alpha:1)
     /*   detailBackdropImageView.af_setImageWithURL(
            NSURL(string: movie.backdropPath(.Medium))!,
            imageTransition: .CrossDissolve(0.2)
        )
        posterImageView.af_setImageWithURL(
            NSURL(string: movie.posterPath(.Small))!,
            imageTransition: .CrossDissolve(0.2)
        )
        titleLabel.attributedText = getTitleString(movie)
        
        rateLabel.text = String(movie.voteAverage!)
        rateLabel.backgroundColor = movie.voteAverage > 5 ?
            colors["highRatingBackgroundColor"] :
            colors["lowRatingBackgroundColor"]
        rateLabel.textColor = movie.voteAverage > 5 ?
            UIColor.blackColor() :
            UIColor.whiteColor()
        
        synopsisLabel.text = movie.synopsis
        synopsisLabel.sizeToFit()
        
        if movie.genres != nil {
            genresLabel.text = movie.genres!.joinWithSeparator(", ")
            runtimeLabel.text = movie.formatedRuntime
            taglineLabel.text = movie.tagline
            
            if taglineLabel.text == "" {
                taglineLabel.text = "---"
            }
            
        } else {
            movie.fetchMoreDetails { movie in
                self.render(movie)
            }
        }*/
    }

}

//
//  MovieDetailViewController.swift
//  AlamoFireDemo
//
//  Created by Yu-Hsuan Chen on 2018/6/25.
//  Copyright © 2018年 Frank.Chen. All rights reserved.
//

import UIKit


class MovieDetailViewController: UIViewController {
    var movie: movie!
    var scrollView = UIScrollView()
    @IBOutlet var detailView: MovieDetailView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = movie.title
        scrollView.frame = view.frame
        //scrollView.addSubview(detailView)
        
        detailView.render(movie: movie!)
        
        detailView.removeFromSuperview()
        scrollView.addSubview(detailView)
        
        //scrollView.contentSize = CGSize(width: -1, height: detailView.synopsisLabel.frame.maxY+50)
        scrollView.contentSize = CGSize(width: -1, height: detailView.frame.maxY+10)
        view = scrollView
        // Do any additional setup after loading the view.
    }
    @IBAction func AddMovie(_ sender: UIButton) {
        let notificationName = Notification.Name("GetMovie")
        NotificationCenter.default.post(name: notificationName, object: nil, userInfo: ["PASS":movie])
        //print(movie.title)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  /*  @IBAction func AddMovie(_ sender: UIButton) {
        let notificationName = Notification.Name("GetMovie")
        NotificationCenter.default.post(name: notificationName, object: nil, userInfo: ["PASS":movie])
        print(movie.title)
        //self.navigationController?.popViewController(animated: true)
    }*/
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

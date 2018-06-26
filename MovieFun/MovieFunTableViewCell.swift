//
//  MovieFunTableViewCell.swift
//  AlamoFireDemo
//
//  Created by Yu-Hsuan Chen on 2018/6/24.
//  Copyright © 2018年 Frank.Chen. All rights reserved.
//

import UIKit

class MovieFunTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    //@IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var overviewLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

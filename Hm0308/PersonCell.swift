//
//  PersonCell.swift
//  Hm0308
//
//  Created by Бектур Кадыркулов on 28/5/22.
//

import UIKit

class PersonCell: UITableViewCell {
    @IBOutlet weak var avatar: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var InfoLabel: UILabel!
    @IBOutlet weak var likeimage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

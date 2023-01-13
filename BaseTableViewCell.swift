//
//  BaseTableViewCell.swift
//  kk
//
//  Created by Никита Попов on 12.01.23.
//

import UIKit

class BaseTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imView: UIImageView!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        nameLabel.numberOfLines = 0
        imView.contentMode = .scaleAspectFit
        imView.layer.cornerRadius = imView.bounds.width/2
        imView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

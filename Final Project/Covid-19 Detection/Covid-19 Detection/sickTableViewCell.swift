//
//  sickTableViewCell.swift
//  Covid-19 Detection
//
//  Created by Ahmed on 02/07/2022.
//

import UIKit

class sickTableViewCell: UITableViewCell {

    @IBOutlet var ImageView: UIImageView!
    @IBOutlet var Label: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

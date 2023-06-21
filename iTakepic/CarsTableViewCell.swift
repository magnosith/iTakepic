//
//  CarsTableViewCell.swift
//  iTakepic
//
//  Created by Student on 21/06/23.
//

import UIKit

class CarsTableViewCell: UITableViewCell {

    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var carName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setup (name:String, image: String) {
        carImage.image = .init(named: image)
        carName.text = name
    }
}

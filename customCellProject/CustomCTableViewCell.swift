//
//  CustomCTableViewCell.swift
//  customCellProject
//
//  Created by ahmetburakozturk on 17.05.2023.
//

import UIKit

protocol CustomCTableViewCellProtocol {
    func addItemToList(indexPath: IndexPath)
}

class CustomCTableViewCell: UITableViewCell {

    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    var cellProtocol : CustomCTableViewCellProtocol?
    var IndexPath : IndexPath?
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func addListClicked(_ sender: Any) {
        cellProtocol?.addItemToList(indexPath: IndexPath!)
    }
    
}

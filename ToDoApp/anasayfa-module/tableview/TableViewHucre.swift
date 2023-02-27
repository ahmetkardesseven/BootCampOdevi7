//
//  TableViewHucre.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import UIKit

class TableViewHucre: UITableViewCell {
    
    @IBOutlet weak var labelAd: UILabel!
    @IBOutlet weak var labelTel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

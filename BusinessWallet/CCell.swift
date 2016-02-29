//
//  CCell.swift
//  BusinessWallet
//
//  Created by bashayr almansor on 2/27/16.
//  Copyright © 2016 BusinessWallet. All rights reserved.
//

import UIKit

class CCell: UITableViewCell {
    
    @IBOutlet weak var OthersCell: UITableViewCell!
    @IBOutlet weak var StoreCell: UITableViewCell!
    @IBOutlet weak var ArtAndDesigneCell: UITableViewCell!
    @IBOutlet weak var StudentServicesCell: UITableViewCell!
    @IBOutlet weak var BeautyCell: UITableViewCell!
    @IBOutlet weak var CheefsCell: UITableViewCell!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

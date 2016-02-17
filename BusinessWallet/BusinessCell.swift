//
//  BusinessCell.swift
//  BusinessWallet
//
//  Created by bashayr almansor on 2/16/16.
//  Copyright © 2016 BusinessWallet. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    
    @IBOutlet weak var Bdescription: UILabel!
    @IBOutlet weak var Bname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  MyTableCell.swift
//  TableViewTest
//
//  Created by Fan Zhang on 10/21/15.
//  Copyright © 2015 TJV Studio. All rights reserved.
//

import UIKit

class MyTableCell: UITableViewCell {

    @IBOutlet weak var lblFirst: UILabel!
    @IBOutlet weak var lblSecond: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

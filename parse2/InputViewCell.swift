//
//  InputViewCell.swift
//  parse2
//
//  Created by Aditya Jayaraman on 2/18/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class InputViewCell: UITableViewCell {

    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func onSend(sender: AnyObject) {
    
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

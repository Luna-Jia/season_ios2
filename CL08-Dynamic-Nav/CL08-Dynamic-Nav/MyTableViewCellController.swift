//
//  MyTableViewCellController.swift
//  CL08-Dynamic-Nav
//
//  Created by Luna Jia on 4/5/24.
//

import UIKit

class MyTableViewCellController: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var vv_imgView: UIImageView!
    @IBOutlet weak var vv_lbseason: UILabel!

}

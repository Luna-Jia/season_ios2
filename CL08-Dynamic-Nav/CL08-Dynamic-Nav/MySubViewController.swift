//
//  MySubViewController.swift
//  CL08-Dynamic-Nav
//
//  Created by Luna Jia on 4/5/24.
//

import UIKit

class MySubViewController: UIViewController {
    
    var cv_img : String = "Spring.jpg"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //self.navigationItem.title = cv_model
               //vv_labelModel.text = cv_model
               vv_imageView.image = UIImage(named: cv_img)
    }
    
    @IBOutlet weak var vv_imageView: UIImageView!
    
}

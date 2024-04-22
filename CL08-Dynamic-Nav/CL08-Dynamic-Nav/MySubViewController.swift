//
//  MySubViewController.swift
//  CL08-Dynamic-Nav
//
//  Created by Luna Jia on 4/5/24.
//

import UIKit

class MySubViewController: UIViewController {
    
    var cv_img : String = "Miso Soup.jpg"
    var cv_recipeText: String = ""
    var cv_recipeName: String = ""
    var cv_title: String = ""  // Add this property to store the title for the navigation item

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = cv_title  // Set the navigation bar title
        vv_imageView.image = UIImage(named: cv_img)
        recipe.text = cv_recipeText
        
        // Set the background color based on the recipe name
                view.backgroundColor = backgroundColor(for: cv_recipeName)
    }
    
    // Determine background color based on the recipe name
        private func backgroundColor(for recipeName: String) -> UIColor {
            switch recipeName {
            case "Miso Soup":
                return UIColor(red: 0.67, green: 0.84, blue: 1.00, alpha: 1.00)
            case "Mochi":
                return UIColor(red: 0.96, green: 1.00, blue: 0.98, alpha: 1.00)  // Mint color
            case "Salmon Teriyaki":
                return UIColor(red: 1.00, green: 0.92, blue: 0.23, alpha: 1.00)  // Dark yellow
            default:
                return UIColor.white
            }
        }
    
    @IBOutlet weak var recipe: UILabel!
    @IBOutlet weak var vv_imageView: UIImageView!
    
}

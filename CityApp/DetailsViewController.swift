//
//  DetailsViewController.swift
//  CityApp
//
//  Created by Barkın Süngü on 1.03.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var cityCountry: UILabel!
    
    var selectedCity : City?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cityName.text = selectedCity?.name
        cityCountry.text = selectedCity?.country
        imageView.image = selectedCity?.image
        
    }
    


}

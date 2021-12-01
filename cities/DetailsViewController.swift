//
//  DetailsViewController.swift
//  cities
//
//  Created by Ömer Oğuz Çelikel on 1.12.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var cityAreaLabel: UILabel!
    // city will be optioonal
    var selectedCity : City?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cityNameLabel.text = selectedCity?.name
        cityAreaLabel.text = selectedCity?.area
        imageView.image = selectedCity?.image
    }


}

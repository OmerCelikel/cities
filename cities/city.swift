//
//  city.swift
//  cities
//
//  Created by Ömer Oğuz Çelikel on 1.12.2021.
//

import Foundation
import UIKit
class City{
    var name : String
    var area : String
    // must import UIKıt
    var image : UIImage
    
    init(name: String, area: String, image: UIImage){
        self.name = name
        self.area = area
        self.image = image
    }
    
}

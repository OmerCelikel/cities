//
//  ViewController.swift
//  cities
//
//  Created by Ömer Oğuz Çelikel on 1.12.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        /*
        let istanbul = City()
        istanbul.name = "Istanbul"
        istanbul.area = "Marmara"
        istanbul.image = UIImage(named: "Istanbul")!
         */
        
       
        
        let istanbul = City(name: "Istanbul", area: "Marmara", image: UIImage(named: "Istanbul")!)
        let antalya = City(name: "Antalya", area: "Akdeniz", image: UIImage(named: "Antalya")!)
        let trabzon = City(name: "Trabzon", area: "Karadeniz", image: UIImage(named: "Trabzon")!)
        let nevsehir = City(name: "Nevsehir", area: "Ic Anadolu", image: UIImage(named: "Nevsehir")!)
        let izmir = City(name: "Izmir", area: "Ege", image: UIImage(named: "Izmir")!)
        
        let cityArray = [istanbul, antalya, trabzon, nevsehir, izmir]
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Text"
        return cell
    }
}


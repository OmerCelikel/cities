//
//  ViewController.swift
//  cities
//
//  Created by Ömer Oğuz Çelikel on 1.12.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var cityArray = [City]()
    var userSelected : City?
    
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
        
        
        
        let Istanbul = City(name: "Istanbul", area: "Marmara", image: UIImage(named: "Istanbul")!)
        let Antalya = City(name: "Antalya", area: "Akdeniz", image: UIImage(named: "Antalya")!)
        let Trabzon = City(name: "Trabzon", area: "Karadeniz", image: UIImage(named: "Trabzon")!)
        let Nevsehir = City(name: "Nevsehir", area: "Ic Anadolu", image: UIImage(named: "Nevsehir")!)
        let Izmir = City(name: "Izmir", area: "Ege", image: UIImage(named: "Izmir")!)
        
        cityArray = [Istanbul, Antalya, Trabzon, Nevsehir, Izmir]
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cityArray[indexPath.row].name
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        userSelected = cityArray[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedCity = userSelected
        }
    }
}


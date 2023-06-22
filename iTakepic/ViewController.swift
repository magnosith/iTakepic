//
//  ViewController.swift
//  iTakepic
//
//  Created by Student on 21/06/23.
//

import UIKit

struct Car {
    let name: String
    let image: String
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var cars: [Car] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    
        let nib = UINib(nibName: "CarsTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CarCell")
        
        cars = [
            .init(name: "GTR", image: "GTR"),
            .init(name: "MUSTANG", image: "MUSTANG"),
            .init(name: "PANAMERA", image: "PANAMERA"),
            .init(name: "AUDI Q8", image: "Q8"),
            .init(name: "FORD F-1500", image: "F150"),
        ]
    }
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell", for: indexPath) as! CarsTableViewCell
        let car = cars[indexPath.row]
        cell.setup(name: car.name, image: car.image)
        return cell
    }
}


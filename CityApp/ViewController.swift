//
//  ViewController.swift
//  CityApp
//
//  Created by Barkın Süngü on 1.03.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var CityArray = [City]()
    var kullaniciSecimi : City?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //Cities
        
        let edirne = City(name: "Edirne", country: "Marmara", image: UIImage(named: "edirne")!)
        
        let tekirdag = City(name: "Tekirdağ", country: "Marmara", image: UIImage(named: "tekirdağ")!)
        
        let bayburt = City(name: "Bayburt", country: "İç Anadolu", image: UIImage(named: "bayburt")!)
        
        let kutahya = City(name: "Kütahya", country: "Ege", image: UIImage(named: "kütahya")!)
        
        CityArray = [edirne, tekirdag, bayburt, kutahya]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CityArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = CityArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi = CityArray[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedCity = kullaniciSecimi
        }
    }


}


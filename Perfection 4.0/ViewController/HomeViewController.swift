//
//  HomeViewController.swift
//  Perfection 4.0
//
//  Created by Sidney Okine on 11/08/2022.
//

import UIKit

class HomeViewController: UIViewController {
    var countries = [Countries]()
    let tableView = TableViewHolder()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let service = Service(baseURL: "https://restcountries.com/v3.1/")
        service.getAllCountryInfoFrom(endPoint: "all")
        service.completionHandler { [weak self] (countries, status, message) in
            if status {
                guard let self = self else {return}
                guard let _countries = countries else {return}
                self.tableView.countries = _countries
                DispatchQueue.main.async {
                    self.tableView.Table.reloadData()
                }

            }

        }
        
        view.backgroundColor = .white
        view.addSubview(tableView)
        self.navigationItem.title = "All Countries"
        
    
    }
    override func viewDidLayoutSubviews() {
       tableView.frame = view.bounds
    }

    
}

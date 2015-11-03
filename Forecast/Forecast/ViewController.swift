//
//  ViewController.swift
//  Forecast
//
//  Created by Mike Henry on 11/3/15.
//  Copyright © 2015 Mike Henry. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {

    //MARK: - Properties
    @IBOutlet weak var searchBar :UISearchBar!
    var networkManager = NetworkManager.sharedInstance
    var dataManager = DataManager.sharedInstance
    
    
    //MARK: - Interactivity Methods        
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        if networkManager.serverAvailable {
            let address = searchBar.text!
            searchBar.resignFirstResponder()
//            let address = "5194 Celtic Drive, North Charleston, SC 29405"
            dataManager.geocodeAddress(address)
        } else {
            print("Search: Server Not Available")
        }
    }
    
    //MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
//        dataManager.geocodeAddress("5194 Celtic Drive, North Charleston, SC 29405")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}


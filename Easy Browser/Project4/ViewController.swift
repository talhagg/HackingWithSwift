//
//  ViewController.swift
//  Project4
//
//  Created by Talha Gölcügezli on 9.11.2022.
//

import UIKit
import WebKit

class ViewController: UITableViewController {
    
    
  
    var websites = ["apple.com","hackingwithswift.com","google.com","twitter.com"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Websites"
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Website", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedWebsites = websites[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }

    
   


}


//
//  ViewController.swift
//  UIKit-test1
//
//  Created by Sothesom on 04/06/1404.
//

import UIKit

class ViewController: UITableViewController {
    var pic = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "List View"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl"){
                pic.append(item)
            }
        }
        
        print(pic)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pic.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pic", for: indexPath)
        cell.textLabel?.text = pic[indexPath.row]
        return cell
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detali") as? DetaliViewController {
            vc.selectImage = pic[indexPath.row]
            navigationController?.pushViewController(vc , animated: true)
        }
    }
}



//
//  DetaliViewController.swift
//  UIKit-test1
//
//  Created by Sothesom on 05/06/1404.
//

import UIKit

class DetaliViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectImage: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectImage
        navigationItem.largeTitleDisplayMode = .never

        if let imageLoad = selectImage {
            imageView.image = UIImage(named : imageLoad)
        }
    }
    
    
    // tabBar balaye safhe
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

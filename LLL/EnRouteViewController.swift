//
//  EnRouteViewController.swift
//  LLL
//
//  Created by Scholar on 8/2/22.
// this is view controller en route

//en route view controller

import UIKit

class EnRouteViewController: UIViewController {

   
    @IBOutlet weak var search: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editSearchBar()
        // Do any additional setup after loading the view.
    }
    func editSearchBar() {
 search.layer.cornerRadius = 20
        search.clipsToBounds = true

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

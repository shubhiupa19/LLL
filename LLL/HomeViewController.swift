//
//  HomeViewController.swift
//  LLL
//
//  Created by Scholar on 8/2/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        roundButton()
        // Do any additional setup after loading the view.
    }
    
    func roundButton() {
        homeButton.layer.cornerRadius = 10.0
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

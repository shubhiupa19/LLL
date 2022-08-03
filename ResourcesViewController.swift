//
//  ResourcesViewController.swift
//  LLL
//
//  Created by Scholar on 8/3/22.
//

import UIKit
import WebKit
class ResourcesViewController: UIViewController {
    @IBOutlet weak var wv: WKWebView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadYoutube(videoID: "oCm_lnoVf08")

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
   
    @IBAction func EPAButtonTapped(_ sender: Any) {
        openUrl(urlStr: "https://www.epa.gov/facts-and-figures-about-materials-waste-and-recycling/national-overview-facts-and-figures-materials#recycling")
    }
    
    
    @IBAction func COVID19ButtonTapped(_ sender: Any) {
        openUrl(urlStr: "https://www.countryliving.com/uk/news/a40767741/covid-19-litter-environment/")
    }
    
    @IBAction func plasticButtonTapped(_ sender: Any) {
        openUrl(urlStr: "https://education.nationalgeographic.org/resource/whopping-91-percent-plastic-isnt-recycled")
    }
    
    @IBAction func currentButtonTapped(_ sender: Any) {
        openUrl(urlStr: "https://www.nycfoodpolicy.org/food-policy-snapshot-california-leglislation-to-phase-out-single-use-plastics/")
    }
    
    
    func openUrl(urlStr: String!) {
        if let url = URL(string:urlStr), !url.absoluteString.isEmpty {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    func loadYoutube(videoID videoID:String) {
            // create a custom youtubeURL with the video ID
            guard
                let youtubeURL = NSURL(string: "https://www.youtube.com/embed/HQTUWK7CM-Y")
                else { return }
            // load your web request
        wv.load( NSURLRequest(url: youtubeURL as URL) as URLRequest )
        }
    
    
    
}

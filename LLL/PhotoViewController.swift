//
//  PhotoViewController.swift
//  LLL
//
//  Created by Scholar on 8/2/22.
//

import UIKit

class PhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    
    var imagePicker = UIImagePickerController()
    
    
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var imageDisplay: UIImageView!
    
    @IBOutlet weak var imageDisplayText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        roundButtons()

        // Do any additional setup after loading the view.
    }
    
  
    
    @IBAction func choosePhotoTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
       
    @IBAction func takePic(_ sender: Any) {
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    
        
    func roundButtons() {
        chooseButton.layer.cornerRadius = 10.0
        photoButton.layer.cornerRadius = 10.0
    }
    
    

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageDisplay.image = selectedImage
            imageDisplayText.text = "Recyclable!"
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
    }


}

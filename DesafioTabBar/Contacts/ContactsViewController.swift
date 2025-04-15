//
//  ContactsViewController.swift
//  DesafioTabBar
//
//  Created by Italo Gabriel Bezerra Evangelista on 14/04/25.
//

import UIKit

class ContactsViewController: UIViewController {

    @IBOutlet weak var userImage: UIImageView!
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureImagePicker()
        
       
    }
    
    func configureImagePicker()-> Void {
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
       
    }
    
    private func openCamera()-> Void {
        present(imagePicker,animated: true)
    }
    @IBAction func adicionarTapped(_ sender: Any) {
        if( userImage.image == nil || userName.text?.isEmpty == true){
            errorLabel.text = "Preencha o nome e a imagem"
            return
        }
        errorLabel.text = ""
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button tapped")
        openCamera()
    }
    
   

}


// MARK: ImagePicker Delegate
extension ContactsViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let pickedImage = info[.originalImage] as? UIImage {
            userImage.image = pickedImage
        }
        
    }
}

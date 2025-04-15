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
    
    @IBOutlet weak var contactsTableView: UITableView!
    
    var users: [User] = []
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureImagePicker()
        configTableView()
    }
    
    private func configTableView()-> Void {
        
        contactsTableView.delegate = self
        contactsTableView.dataSource = self
        contactsTableView.register(AppTableViewCell.createNib(), forCellReuseIdentifier: AppTableViewCell.identifier)
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
        
        users.insert(User(uiImage: userImage.image!, nome: userName.text!), at: 0)
        
        contactsTableView.reloadData()
        
        
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

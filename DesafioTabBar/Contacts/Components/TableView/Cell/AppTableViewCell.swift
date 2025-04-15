//
//  AppTableViewCell.swift
//  DesafioTabBar
//
//  Created by Italo Gabriel Bezerra Evangelista on 14/04/25.
//

import UIKit

class AppTableViewCell: UITableViewCell {
    
    
    static let identifier: String = "AppTableViewCell"
    
    @IBOutlet weak var myText: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    static func createNib()-> UINib {
        UINib(nibName: identifier, bundle: nil)
    }
    
    func setup(_ user: User)-> Void{
        myImage.image = user.uiImage
        myText.text = user.nome
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

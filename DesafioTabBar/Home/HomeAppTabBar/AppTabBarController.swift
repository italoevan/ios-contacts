//
//  AppTabBarController.swift
//  DesafioTabBar
//
//  Created by Italo Gabriel Bezerra Evangelista on 14/04/25.
//

import UIKit

class AppTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = .white
        configureNames()
        configureImages()
    }
    
    
    func configureNames(){
        tabBar.items?[0].title = "Contatos"

        
        tabBar.items?[1].title = "Telefones"
      
    }
    
    func configureImages(){
        tabBar.items?[0].image = UIImage(systemName: "person.crop.circle")
        tabBar.items?[1].image = UIImage(systemName: "phone")
    }



}

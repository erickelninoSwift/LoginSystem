//
//  HomeController.swift
//  ZandoLogin
//
//  Created by El nino Cholo on 2020/08/03.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit
import Firebase

class HomeController: UIViewController
{
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    var services = Services()
    private let retrun: UIButton =
    {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(#imageLiteral(resourceName: "baseline_arrow_back_white_24dp").withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(logout), for: .touchUpInside)
        
        return button
    }()
    //MARK: Functions
    @objc func logout()
    {
            
        Logout { (erickmethode) in
            self.services.logout()
            self.navigationController?.popViewController(animated: true)
        }
    }
    func configureUI()
    {
        configure()
        view.addSubview(retrun)
        retrun.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        retrun.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    }
}

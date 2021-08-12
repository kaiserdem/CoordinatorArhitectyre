//
//  ToursViewController.swift
//  Coordinator Tabbar
//
//  Created by kaiserdem  on 12.08.2021.
//

import UIKit

class ToursViewController: UIViewController, ToursBaseCoordinated {
    
    weak var coordinator: ToursBaseCoordinator?
    var goToOrders2button: UIButton!
    
    init(coordinator: ToursBaseCoordinator) {
        super.init(nibName: nil, bundle: nil)
        self.coordinator = coordinator
        title = "Tours"
    }
    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.backgroundColor = .gray
        configureButton()
    }
    
    private func configureButton() {
        goToOrders2button = UIButton()
        view.addSubview(goToOrders2button)
        goToOrders2button.translatesAutoresizingMaskIntoConstraints = false
        
        goToOrders2button.setTitle(" Go to Tours 2 ", for: .normal)
        goToOrders2button.layer.borderColor = UIColor.black.cgColor
        goToOrders2button.layer.borderWidth = 2
        goToOrders2button.backgroundColor = .black
        goToOrders2button.addTarget(self, action: #selector(goToHome2), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            goToOrders2button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToOrders2button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc private func goToHome2() {
        coordinator?.goToTours2Screen(animated: true)
    }
}


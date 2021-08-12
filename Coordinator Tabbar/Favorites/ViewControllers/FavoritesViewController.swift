//
//  FavoritesViewController.swift
//  Coordinator Tabbar
//
//  Created by kaiserdem  on 12.08.2021.
//

import UIKit

class FavoritesViewController: UIViewController, FavoritesBaseCoordinated {
    var coordinator: FavoritesBaseCoordinator?
    
    var goToFavorites2button: UIButton!
    
    init(coordinator: FavoritesBaseCoordinator) {
        super.init(nibName: nil, bundle: nil)
        self.coordinator = coordinator
        title = "Favorites"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        self.navigationController?.navigationBar.backgroundColor = .white
        self.tabBarController?.tabBar.barTintColor = .yellow
        configureButton()
    }
    
    private func configureButton() {
        goToFavorites2button = UIButton()
        view.addSubview(goToFavorites2button)
        goToFavorites2button.translatesAutoresizingMaskIntoConstraints = false
        
        goToFavorites2button.setTitle(" Go to Next Screen ", for: .normal)
        goToFavorites2button.layer.borderColor = UIColor.black.cgColor
        goToFavorites2button.layer.borderWidth = 2
        goToFavorites2button.backgroundColor = .black
        goToFavorites2button.addTarget(self, action: #selector(goToHome2), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            goToFavorites2button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToFavorites2button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc private func goToHome2() {
        coordinator?.goToFavorites2ScreenWith(title: "Top Title")
    }
}

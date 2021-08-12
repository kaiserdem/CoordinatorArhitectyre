//
//  MainCoordinator.swift
//  Coordinator Tabbar
//
//  Created by kaiserdem  on 12.08.2021.
//

import UIKit

enum AppFlow {
    case MostViewed
    case Favorites
}

class MainCoordinator: MainBaseCoordinator {

    var parentCoordinator: MainBaseCoordinator?
    
    lazy var homeCoordinator: FavoritesBaseCoordinator = FavoritesCoordinator()
    lazy var toursCoordinator: ToursBaseCoordinator = ToursCoordinator()
    
    lazy var rootViewController: UIViewController  = UITabBarController()
    
    func start() -> UIViewController {
        
        let homeViewController = homeCoordinator.start()
        homeCoordinator.parentCoordinator = self
        homeViewController.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "face.smiling"), tag: 0)
        
        let ordersViewController = toursCoordinator.start()
        toursCoordinator.parentCoordinator = self
        ordersViewController.tabBarItem = UITabBarItem(title: "Touts", image: UIImage(systemName: "doc.plaintext"), tag: 1)
        
        (rootViewController as? UITabBarController)?.viewControllers = [homeViewController,ordersViewController]
                
        return rootViewController
    }
        
    func moveTo(flow: AppFlow) {
        switch flow {
        case .MostViewed:
            (rootViewController as? UITabBarController)?.selectedIndex = 0
        case .Favorites:
            (rootViewController as? UITabBarController)?.selectedIndex = 1
        }
    }
    
    func resetToRoot() -> Self {
        homeCoordinator.resetToRoot()
        moveTo(flow: .MostViewed)
        return self
    }
    
}

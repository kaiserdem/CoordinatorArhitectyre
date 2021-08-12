//
//  ToursCoordinator.swift
//  Coordinator Tabbar
//
//  Created by kaiserdem  on 12.08.2021.
//

import UIKit

class ToursCoordinator: ToursBaseCoordinator {
    
    func goToPendingToursScreen() {
        print("go to pending Tours screen")
    }
    
    var parentCoordinator: MainBaseCoordinator?
    
    var rootViewController: UIViewController = UIViewController()
    
    func start() -> UIViewController {
        //rootViewController = UINavigationController(rootViewController: ToursViewController(coordinator: self))
        
        let storyboard = UIStoryboard(name: "Tours", bundle: nil)
        var vc = storyboard.instantiateViewController(identifier: "Tours") as! ToursViewController
        vc = ToursViewController(coordinator: self)
        rootViewController = UINavigationController(rootViewController: vc)

        
        return rootViewController
    }
    
    func goToTours2Screen(animated: Bool = false) -> Self  {
        navigationRootViewController?.pushViewController(Tours2ViewController(coordinator: self), animated: animated)
        return self
    }
    
    func goToTours3Screen(animated: Bool = false) -> Self {
        navigationRootViewController?.pushViewController(Tours3ViewController(coordinator: self), animated: animated)
        return self
    }
    
    
}

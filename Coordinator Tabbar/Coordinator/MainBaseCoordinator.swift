//
//  MainBaseCoordinator.swift
//  Coordinator Tabbar
//
//  Created by kaiserdem  on 12.08.2021.
//

import Foundation

protocol MainBaseCoordinator: Coordinator {
    var homeCoordinator: FavoritesBaseCoordinator { get }
    var toursCoordinator: ToursBaseCoordinator { get }
    func moveTo(flow: AppFlow)
}

protocol FavoritesBaseCoordinated {
    var coordinator: FavoritesBaseCoordinator? { get }
}

protocol ToursBaseCoordinated {
    var coordinator: ToursBaseCoordinator? { get }

}

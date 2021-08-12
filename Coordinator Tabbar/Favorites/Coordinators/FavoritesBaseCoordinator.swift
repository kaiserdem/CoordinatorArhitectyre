//
//  FavoritesBaseCoordinator.swift
//  Coordinator Tabbar
//
//  Created by kaiserdem  on 12.08.2021.
//

import UIKit


protocol FavoritesBaseCoordinator: Coordinator {
    func goToFavorites2ScreenWith(title: String)
    func goToFavoritesFlow()
    func goToDeepViewInFavoriteTab()
}

//
//  ToursBaseCoordinator.swift
//  Coordinator Tabbar
//
//  Created by kaiserdem  on 12.08.2021.
//

import UIKit

protocol ToursBaseCoordinator: Coordinator {
    @discardableResult func goToTours2Screen(animated: Bool ) -> Self
    @discardableResult func goToTours3Screen(animated: Bool) -> Self
}

//
//  BeerTableViewControllerFactory.swift
//  ios_alfa
//
//  Created by Polina Popova on 13/11/2023.
//


final class BeerTableViewControllerFactory {
    func build() -> BeerTableViewController {
        let service = BeerService()
        let viewController = BeerTableViewController(service: service)
        return viewController
    }
}

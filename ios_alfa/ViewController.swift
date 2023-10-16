//
//  ViewController.swift
//  ios_alfa
//
//  Created by Polina Popova on 02/10/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        let url = URL(string: "https://api.punkapi.com/v2/beers")!
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            guard
                let data = data,
                let response = response,
                error == nil
            else {
                return
            }
            let str = String(data: data, encoding: .utf8)
            print("Полученные данные: \(str ?? "")")
        }).resume()
    }


}


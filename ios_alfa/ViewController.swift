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
                error == nil
            else {
                return
            }
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            //обработка данных
            let model = try! decoder.decode([BeerDTO].self, from: data)
            print(model)
        }).resume()
    }


}

struct BeerDTO: Decodable {
    let id: Int
    let name: String
    let tagline: String
    let imageUrl: URL
}

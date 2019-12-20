//
//  FeedViewController.swift
//  VKNewsFeed
//
//  Created by Hasan Akniyev on 17.12.2019.
//  Copyright © 2019 Hasan Akniyev. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    private let networkService: Networking = NetworkService()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
//        let params = ["filters": "post, photo"]
//        networkService.request(path: API.newsFeed, params: params) { (data, error) in
//            if let error = error {
//                print("Error received while requesting data: \(error.localizedDescription)")
//            }
//
//            guard let data = data else { return }
//            let json = try? JSONSerialization.jsonObject(with: data, options: [])
//            print("json: \(json)")
//        }
        
        let params = ["owner_id": "129186922", "filter": "owner"]
        networkService.request(path: API.userWall, params: params, completion: { (data, error) in
            if let error = error {
                print("Error received while requesting data: \(error.localizedDescription)")
            }
            
            guard let data = data else { return }
            let json = try? JSONSerialization.jsonObject(with: data, options: [])
            print("json: \(json ?? "")")
        })
    }

}

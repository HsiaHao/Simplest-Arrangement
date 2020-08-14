//
//  ListViewController.swift
//  Simplest Arragement
//
//  Created by 夏英浩 on 8/9/20.
//  Copyright © 2020 夏英浩. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    var userDetails: [UserDetail] = [
        UserDetail(title: "Xcode", detail: "working in the morning with a cup of tea", time: Date(), state: "Not Yet"),
        UserDetail(title: "Guitar", detail: "working in the morning with a cup of tea", time: Date(), state: "Not Yet"),
        UserDetail(title: "Exercise", detail: "working in the morning with a cup of tea", time: Date(), state: "Not Yet")
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
        
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    }
    
}

extension ListViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! UserDetailCell
        cell.titleLabel.text = userDetails[indexPath.row].title
        
        
        return cell
    }
    
    
}
extension ListViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        tableView.reloadData()
    }
}

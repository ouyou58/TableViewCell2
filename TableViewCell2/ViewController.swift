//
//  ViewController.swift
//  TableViewCell2
//
//  Created by ouyou on 2019/06/17.
//  Copyright © 2019 ouyou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var tableView2: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView1.delegate = self
        tableView1.dataSource = self
        tableView2.delegate = self
        tableView2.dataSource = self
        
        let nib1 = UINib(nibName: "TableViewCell1", bundle: nil)
        tableView1.register(nib1, forCellReuseIdentifier: "cell1")
        let nib2 = UINib(nibName: "TableViewCell2", bundle: nil)
        tableView2.register(nib2, forCellReuseIdentifier: "cell2")

    }
}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 1 {
            return 5
        }else if tableView.tag == 2 {
            return 10
        }else{
            return 0
        }
            }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView.tag == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! TableViewCell1
            return cell
        }else if tableView.tag == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! TableViewCell2
            return cell
        }else{
            return UITableViewCell()
        }
    }
    
    
}

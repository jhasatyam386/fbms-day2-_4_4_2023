//
//  ViewController2.swift
//  fbms day2 _4_4_2023
//
//  Created by R&W on 16/04/35.
//

import UIKit

class ViewController2: UIViewController ,UITableViewDelegate,UITableViewDataSource{
  
    var arr2 = fmbsHelper.getData()

    @IBOutlet weak var tableviewfrom: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        cell.label1.text = arr2[indexPath.row].id.description
        cell.label2.text = arr2[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

    

}

//
//  ViewController.swift
//  fbms day2 _4_4_2023
//
//  Created by R&W on 04/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var t1: UITextField!
    @IBOutlet weak var t2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        fmbsHelper.createFile()
    }

    @IBAction func saveButtonAction(_ sender: Any) {
        if let x = t1.text, let y = Int(x){
            fmbsHelper.addData(name: t2.text ?? "", id: y)
        }
    }
    @IBAction func showButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(navigation, animated: true)
        
        
    }
    @IBAction func deleteButtonAction(_ sender: Any) {
        if let x = t1.text, let y = Int(x){
            fmbsHelper.deleteData(name: t2.text ?? "", id: y)
        }
    }
    
}


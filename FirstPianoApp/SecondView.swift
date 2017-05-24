//
//  ViewController.swift
//  FirstPianoApp
//
//  Created by Alex on 28/03/2017.
//  Copyright © 2017 Alex. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore


class SecondView: UIViewController {
    
    var myArray = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var DO1: UIButton!
    
    @IBAction func addButton(_ sender: Any) {
//        var myArray=["Do1"]
        
//        tableView.beginUpdates()
//        tableView.insertRows(at: [IndexPath(row: myArray.count-1, section: 0)], with: .automatic)
//        tableView.endUpdates()
//        tableView.reloadData()
        
        myArray.append("something")
        tableView.reloadData()
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = myArray[indexPath.row]
        return(cell)
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete{
            myArray.remove(at: indexPath.row)
            tableView.reloadData()
        }
        
    }
    
//    @IBAction func additem(_ sender: Any) {
//        if(UIButton.title() != ""){
//            myArray.append(UIButton.text!)
//            UIButton.text = ""
//        }
//    }
    
//    @IBAction func addItem(_ sender: Any) {
//        var myArray=["Do1","Re","Mi","Fa"]
//        for var i in 0 ... myArray.count{
//            if(myArray[i] != ""){
//                myArray.append(myArray[i])
//                tableView.cell = myArray[i]
//            }
//        }
//    }
//    
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self as? UITableViewDataSource
        tableView.delegate = self as? UITableViewDelegate
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}



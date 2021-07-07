//
//  NewViewController.swift
//  buttons
//
//  Created by Diana on 07.07.2021.
//

import UIKit

class NewViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let simpleTableIdentifier = "SimpleTableIdentifier"
    
    let numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
        if (cell == nil) {
                    cell = UITableViewCell(
                        style: UITableViewCell.CellStyle.default,
                        reuseIdentifier: simpleTableIdentifier)
                }
        cell?.textLabel?.text = numbers[indexPath.row]
                return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  TableViewController.swift
//  test
//
//  Created by Osama Buzdar on 18/08/2022.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    let data = DataManager().userData
    
    var selectedIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    
        cell.textLabel?.text = data[indexPath.row].firstName
        
            return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let ivc = segue.destination as! InformationViewController
        ivc.firstName = data[selectedIndex].firstName
        ivc.lastName = data[selectedIndex].lastName
        ivc.email = data[selectedIndex].email
        ivc.phone = data[selectedIndex].phone
        
    }
}



//
//  ViewController.swift
//  test
//
//  Created by Osama Buzdar on 17/08/2022.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate {
    
    let data = DataManager().userData
    
    @IBOutlet weak var cell: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int {
        
        return data.count
    }
    
    private  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath )-> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row].firstName
        return cell
    }
    
    
    
}


//override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            let svc = segue.destination as! SecondViewController
//    svc.labelText = "From the previous screen it was only text"
//
//}

//self.performSegue(withIdentifier: "goToNext", sender: nil)

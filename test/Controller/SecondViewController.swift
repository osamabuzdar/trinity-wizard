//
//  SecondView.swift
//  test
//
//  Created by Osama Buzdar on 18/08/2022.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    var labelText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = labelText!

        // Do any additional setup after loading the view.
    }
    @IBAction func onBack(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}

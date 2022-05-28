//
//  ChatViewController.swift
//  Hm0308
//
//  Created by Бектур Кадыркулов on 28/5/22.
//

import UIKit

class ChatViewController: UIViewController {
lazy var chatTitle = ""
    @IBOutlet weak var chatNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chatNameLabel.text = chatTitle
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

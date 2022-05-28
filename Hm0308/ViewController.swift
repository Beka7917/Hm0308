//
//  ViewController.swift
//  Hm0308
//
//  Created by Бектур Кадыркулов on 28/5/22.
//

import UIKit

class ViewController: UIViewController {

    var persons: [PersonModel] = [PersonModel(name: "Carry", info: "Чемпион Нба 3 Раза", avatar: UIImage(named: "2")!),
PersonModel(name: "Messi", info: "Обладатель 7 золотых Мячей", avatar: UIImage(named: "1")!),
PersonModel(name: "Lebron", info: "Лучший в Истории Баскетбола", avatar: UIImage(named: "3")!),
PersonModel(name: "Ronaldo", info: "Лучший Бомбардир В Истории Футбола", avatar: UIImage(named: "4")!)
          
    
    
    ]
    
    @IBOutlet weak var PersonTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        PersonTableView.dataSource = self
        PersonTableView.delegate = self
    }


}


extension ViewController:
    UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person_cell", for: indexPath) as! PersonCell
        cell.avatar.image = persons [indexPath.row].avatar
        cell.nameLabel.text = persons[indexPath.row].name
        cell.InfoLabel.text = persons[indexPath.row].info
        return cell
    }
    
    
    
    
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chatVc = storyboard?.instantiateViewController(withIdentifier: "ChatViewController") as! ChatViewController
        let chatTitle  = persons[indexPath.row].info
        chatVc.chatTitle = chatTitle
        navigationController?.pushViewController(chatVc, animated: true)
    }
}


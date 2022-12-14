//
//  ViewController.swift
//  HomeWork N3 (3)
//
//  Created by Magdiel Altynbekov on 10/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var adressTableView: UITableView!
    
    var adresses: [String] = ["Нурик - 7 мкр 43дом 55кв","Байгелди - 5 мкр 34дом 13кв","Ислам - 7 мкр 38дом 79кв","Нурсултан - восток-5 55дом 55кв","руслан - 4444444444444444444космос дордой"]
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


extension ViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return adresses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = adressTableView.dequeueReusableCell(withIdentifier: "italiano", for: indexPath)
        
        cell.textLabel?.text = adresses[indexPath.row]
        
        return cell
    }
    
    
}

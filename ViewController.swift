//
//  ViewController.swift
//  kk
//
//  Created by Никита Попов on 12.01.23.
//

import UIKit

class ViewController: UIViewController {
    var netw = CreateInfo()
    var arrIdPers = [Int]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrIdPers = updatePers()
        
    }
    
    //MARK: refresh Button Action
    @IBAction func refreshPers(_ sender: UIBarButtonItem) {
        arrIdPers = updatePers()
        tableView.reloadData()
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    //MARK: DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrIdPers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? BaseTableViewCell else { return UITableViewCell() }
        netw.allPers = {res in
            DispatchQueue.main.async {
                cell.nameLabel.text = res[indexPath.row].name
                cell.genderLabel.text = res[indexPath.row].gender
                cell.statusLabel.text = res[indexPath.row].status
                guard let url = URL(string: res[indexPath.row].image) else {return}
                URLSession.shared.dataTask(with: url, completionHandler: {data, resp, err in
                    guard let data = data else {return}
                    var image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.imView.image = image
                        
                        
                    }
                }).resume()
            }
        }
        netw.createData(idPers: arrIdPers)
        return cell
    }
    
    //MARK: Delegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    //MARK: TableView Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        netw.allPers = {res in
            DispatchQueue.main.async {
                let alertController  = UIAlertController(title: "Character Details", message: "Type: \(res[indexPath.row].type)", preferredStyle: .actionSheet)
                let alertAction = UIAlertAction(title: "OK", style: .default)
                alertController.addAction(alertAction)
                self.present(alertController, animated: true)
            }
        }
        netw.createData(idPers: arrIdPers)
    }
}


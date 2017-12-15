//
//  PlayerEditViewController.swift
//  EatmeIfyoucan
//
//  Created by sotuken on 2017/12/14.
//  Copyright © 2017年 sotuken. All rights reserved.
//

import UIKit

class PlayerEditViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    let CELL_ID = "PLAYER_EDIT"
    
    var appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var playerEditTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.playerEditTableView.delegate = self
        self.playerEditTableView.dataSource = self
        self.playerEditTableView.reloadData()
        self.playerEditTableView.isEditing = true
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appdelegate.player.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.CELL_ID, for: indexPath) as! PlayerEditTableViewCell
        cell.nameLabel.text = "\(indexPath.row+1). \(self.appdelegate.player[indexPath.row].name)"
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

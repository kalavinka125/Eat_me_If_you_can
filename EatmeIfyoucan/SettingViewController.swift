//
//  SettingViewController.swift
//  EatmeIfyoucan
//
//  Created by sotuken on 2017/12/14.
//  Copyright © 2017年 sotuken. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    let CELL_ID = "PLAYER_CELL"
    let SEGUE_ID = "GO_TO_GAME"
    var appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var playerTableView: UITableView!
    @IBOutlet weak var playerCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        appdelegate.player.removeAll()
        for _ in (0 ..< 4){
            appdelegate.player.append(Player(name: "Player\(appdelegate.player.count+1)", isWolf: false, targetID: -1, isSleep: false))
        }
        playerCountLabel.text = String(appdelegate.player.count)
        
        self.playerTableView.delegate = self
        self.playerTableView.dataSource = self
        playerTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func addPlayerTapped(_ sender: Any) {
        if appdelegate.player.count < 6 {
            appdelegate.player.append(Player(name: "Player\(appdelegate.player.count+1)", isWolf: false, targetID: -1, isSleep: false))
        }
        playerCountLabel.text = String(appdelegate.player.count)
        playerTableView.reloadData()
    }
    
    @IBAction func removePlayerTapped(_ sender: Any) {
        if appdelegate.player.count > 4 {
            appdelegate.player.removeLast()
        }
        playerCountLabel.text = String(appdelegate.player.count)
        playerTableView.reloadData()
    }
    
    @IBAction func gameStartTapped(_ sender: Any) {
        
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appdelegate.player.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.CELL_ID, for: indexPath) as! PlayerSettingTableViewCell
        cell.playerNameLabel.text = "\(indexPath.row+1). \(appdelegate.player[indexPath.row].name)"
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

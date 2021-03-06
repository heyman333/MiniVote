//
//  MainMasterViewController.swift
//  MiniVote
//
//  Created by Hyunah on 2017. 11. 11..
//  Copyright © 2017년 YoungsooHan. All rights reserved.
//

import UIKit

class MainMasterViewController: UITableViewController {

    var temp_List = [MainVoteMdoel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        //tableView.register(VoteListCell.self, forCellReuseIdentifier: "cellID")
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let temp_1 = MainVoteMdoel(titleStr: "오늘 점심메뉴", subtitleStr: "5명참여 미참여", regidateLabel: "2017년 11월 13일 월요일 오전 11:30마감")
        let temp_2 = MainVoteMdoel(titleStr: "오늘 점심메뉴", subtitleStr: "5명참여 미참여", regidateLabel: "2017년 11월 13일 월요일 오전 11:30마감")
        let temp_3 = MainVoteMdoel(titleStr: "오늘 점심메뉴", subtitleStr: "5명참여 미참여", regidateLabel: "2017년 11월 13일 월요일 오전 11:30마감")
        
        temp_List.append(temp_1)
        temp_List.append(temp_2)
        temp_List.append(temp_3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
    /// 섹션 개수
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    /// 각 섹션마다 셀의 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return temp_List.count
    }

    /// 각 셀마다 어떻게 표시될지
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! MainCellViewControllerTableViewCell

        cell.titleLabel.text! = temp_List[indexPath.row].titleStr
        cell.subTitleLabel.text! = temp_List[indexPath.row].subtileStr
        cell.regidateLabel.text! = temp_List[indexPath.row].regidateLabel
        
        
        return cell
    }
    
    /// 셀의 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
 
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

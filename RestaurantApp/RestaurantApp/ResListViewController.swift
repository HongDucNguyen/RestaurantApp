//
//  ResListViewController.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 7/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit

class ResListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var resTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        Utility.loadInfo()
        resTable.dataSource = self
        resTable.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Utility.Restaurants.count
    }
    //Collect data from entity and insert it to table view - Create a Restaurant List
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resList", for: indexPath) as! ResListTableViewCell
        cell.nameLabel.text = Utility.Restaurants[indexPath.row].name
        cell.nameImage.image = UIImage(named: Utility.Restaurants[indexPath.row].name)
        cell.nameRating.text = "Rating \(Utility.Restaurants[indexPath.row].rating) stars"
        
        return cell
    }
    
    //Create function to perform segue when click on a cell in the list
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segueResInfo", sender: Utility.Restaurants[indexPath.row])
    }
    //Create function to prepare for segue in which pass the data from object to new object in the next view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "segueResInfo"{
            if let indexPath = resTable.indexPathForSelectedRow{
                let temp = Utility.Restaurants[indexPath.row]
                (segue.destination as! ResInfoViewController).r = temp
            }
        }
    }
    //Create function to unwind segue, the list will be reloaded
    @IBAction func unWindSegue(segue: UIStoryboardSegue){
        resTable.reloadData()
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


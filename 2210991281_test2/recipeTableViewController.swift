//
//  recipeTableViewController.swift
//  2210991281_test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class recipeTableViewController: UITableViewController {

    var meals: [Meal] {
        return [
            Meal(name: "breakfast", food: [
                food(name: "paranthe",calories: "120 calories", prep_time: "15 minutes"),
                food(name: "eggs",  calories: "30 calories", prep_time: "10 minutes")
            ]),
            Meal(name: "lunch", food: [
                food(name: "rice",  calories: "150 calories", prep_time: "20 minutes"),
                food(name: "chicken",calories: "200 calories", prep_time: "45 minutes")
            ]),
            Meal(name: "snacks", food: [
                food(name: "samosa", calories: "40 calories", prep_time: "30 minutes"),
                food(name: "sandwich", calories: "50 calories", prep_time: "11 minutes")
            ]),
            Meal(name: "dinner", food: [
                food(name: "chapati", calories: "10 calories", prep_time: "5 minute"),
                food(name: "omellete",  calories: "50 calories", prep_time: "10 minute")
            ])
        ]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let meal = meals[section]
        return meal.food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "food", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        var content =  cell.defaultContentConfiguration()
        content.text = food.name
        content.secondaryText = food.calories
        //content. = food.prep_time
        cell.contentConfiguration = content

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    
    override func tableView(_ tableView: UITableView,
       editingStyleForRowAt indexPath: IndexPath) ->
       UITableViewCell.EditingStyle {
        return .none
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

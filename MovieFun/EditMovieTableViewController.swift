//
//  EditMovieTableViewController.swift
//  AlamoFireDemo
//
//  Created by Yu-Hsuan Chen on 2018/6/25.
//  Copyright © 2018年 Frank.Chen. All rights reserved.
//

import UIKit

class EditMovieTableViewController: UITableViewController {
    var Movie: movie?
    
    @IBOutlet weak var overView: UITextView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBAction func doneButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "goBackToFavoriteTableWithSegue", sender: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        overView.text = Movie?.overview
        titleTextField.text = Movie?.title
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

   /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }*/

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if Movie == nil {
            Movie = movie(id:0, title: titleTextField.text,poster_path: "", backdrop_path: "", vote_average: 0, vote_count: 0, release_date: "", overview: overView.text, genres_ids:[])
        } else {
            Movie?.title = titleTextField.text!
            Movie?.overview = overView.text
            
        }
    }
    

}

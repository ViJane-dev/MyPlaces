//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Viktorija Romanjuk on 22.01.2021.
//

import UIKit

class MainViewController: UITableViewController {

    let restaurantNames = [
        "Murakami", "Руккола", "McDonalds",
        "Охота на овец", "Dialog у Беллы", "AromaKava", "Тюбетейка",
        "Прага", "Il Molino", "ODESSA", "Мароккана", "Мама МАНАНА",
        "ORLY", "Mushlya", "Маца и Устрицы",
        "Жизнь Замечательных Людей", "Имбирь", "Кувшин"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = restaurantNames[indexPath.row]
        // Configure the cell...
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
        return cell
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

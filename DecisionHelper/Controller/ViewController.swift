//
//  ViewController.swift
//  DecisionHelper
//
//  Created by majess on 14/08/2019.
//  Copyright © 2019 Fresh IT. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var focusArray = [FocusData]()
    
    @IBOutlet weak var focusTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        focusTableView.delegate = self
        focusTableView.dataSource = self
        
        focusArray.append(FocusData(focusName: "I want to be famus"))
        
        configureTableView()

    }

    @IBAction func randomDecisionButtonPressed(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func statsButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func beerButtonPressed(_ sender: UIButton) {
    }

    func configureTableView() {
        focusTableView.rowHeight = focusTableView.bounds.height/4
        focusTableView.estimatedRowHeight = 120.0
    }
    
    // MARK: - Table View Delegate methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return focusArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = focusTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = focusArray[indexPath.row].focusName
        
        return cell
    }
    
}


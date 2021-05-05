//
//  ViewController.swift
//  TapCounter
//
//  Created by Kovac on 2021/5/5.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    var counter: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        title = "Counter"

        let resetButton = UIBarButtonItem(title: "Reset",
                                          style: .plain,
                                          target: self,
                                          action: #selector(resetCounter))
        navigationItem.leftBarButtonItem = resetButton

        navigationController?.navigationBar.barTintColor = .systemGray6
        navigationController?.navigationBar.tintColor = .systemGreen

        view.tintColor = .red
    }

    @objc func resetCounter() {
        counterLabel.text = "0"
    }

    @IBAction func startCounter() {
        counter += 1
        counterLabel.text = String(counter)
    }
}


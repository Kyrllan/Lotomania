//
//  ViewController.swift
//  Lotomania
//
//  Created by Kyrllan Nogueira on 27/03/19.
//  Copyright © 2019 Kyrllan Nogueira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet var btBola: [UIButton]!
    
    @IBAction func btGerarJogo() {
        var result: [Int] = []
        while result.count < 50 {
            let randomNumber = Int(arc4random_uniform(UInt32(100)))
            if !result.contains(randomNumber){
                result.append(randomNumber)
            }
        }
        
        for (index, game) in result.sorted().enumerated() {
            btBola[index].setTitle("\(game)", for: .normal)
        }
    
}
    
}


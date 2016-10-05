//
//  ViewController.swift
//  test
//
//  Created by David Shustin on 6/24/16.
//  Copyright © 2016 David Shustin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var userAction: UIButton!
    var toTest: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        userAction.addTarget(self, action: #selector(ViewController.onPress), for: .touchUpInside)
    }
    func isPrime(_ num: Int) -> Bool {
        for var i in 2...Int(floor(Double(sqrt(Float(num))))) {
            if (num % i == 0) {
                return false
            }
        }
        return true
    }
    func onPress () {
        toTest = Int(input.text!)
        result.text = toTest == nil ? "Please enter valid input." : (isPrime(toTest!) ? "This number is prime!" : "This number is composite!")
        //print(Int("test"))
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


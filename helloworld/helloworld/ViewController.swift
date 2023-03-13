//
//  ViewController.swift
//  helloworld
//
//  Created by おおやく on 2023/03/13.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    var point = 0;
    var pointDouble: Double = 0.0;
    
    // viewDidLoad 在页面加载好之后运行
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Int: \(point) \n Double: \(pointDouble)"
        button.setTitle("+1", for: .normal)
    }

    @IBAction func clickButton(_ sender: UIButton) {
        print("click button")
        
        if (point < 10) {
            point += 1
            pointDouble += 1
            button.setTitle("+1", for: .normal)
        }else {
            point -= 1
            pointDouble -= 1
            button.setTitle("-1", for: .normal)
        }
        
        label.text = "Int: \(point) \n Double: \(pointDouble)"
    }
    

}


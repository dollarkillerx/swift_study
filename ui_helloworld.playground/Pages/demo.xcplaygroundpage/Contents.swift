//: [Previous](@previous)

import UIKit
import PlaygroundSupport



var greeting = "Hello, playground"

class MyLabel: UILabel {
    required int?(coder aDecoder: NSCoder) {
        supper.init(coder: aDecoder)
        initializeLabel()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeLabel()
    }
    func initializeLabel() {
        self.textAlignment = .left
        self.font = UIFont(name: "Halvetica", size: 17)
        self.textColor = UIColor.red
        self.text = "hello world"
    }
}

//: [Next](@next)

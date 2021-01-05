//
//  ViewController.swift
//  drawApple
//
//  Created by 7 on 2021/1/4.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var apple: UILabel!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var shapeSelect: UISegmentedControl!
    @IBOutlet weak var slider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //apple.text = "🍎"
    }
    @IBAction func shapeSelectAction(_ sender: Any) {
        apple.text = "🍎"
        number.text = "1"
        slider.value = 1

    }
    

    @IBAction func appleSlider(_ sender: UISlider) {
        
        sender.value.round()
        number.text = String(format: "%.0f", sender.value)
        let num = Int(sender.value)

        if shapeSelect.selectedSegmentIndex == 0 {
            apple.text = "\(square(number: num))"
        } else if shapeSelect.selectedSegmentIndex == 1 {
            apple.text = "\(board(number: num))"

        } else if shapeSelect.selectedSegmentIndex == 2 {
            apple.text = "\(triangle(number: num))"

        } else {
            apple.text = "\(upsideDownTriangle(number: num))"

        }

    }
    
}


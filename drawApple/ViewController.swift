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
        
        if shapeSelect.selectedSegmentIndex == 4 {
            apple.textAlignment = .left
        } else {
            apple.textAlignment = .center
        }

    }
    

    @IBAction func appleSlider(_ sender: UISlider) {
        
        // 將 sender 控制為整數
        sender.value.round()
        
        // slider 旁邊文字的顯示格式，不顯示小數點
        number.text = String(format: "%.0f", sender.value)
        
        // 把 sender 的值轉成 Int
        let num = Int(sender.value)

        if shapeSelect.selectedSegmentIndex == 0 {
            apple.text = "\(square(number: num))"
        } else if shapeSelect.selectedSegmentIndex == 1 {
            apple.text = "\(board(number: num))"

        } else if shapeSelect.selectedSegmentIndex == 2 {
            apple.text = "\(triangle(number: num))"

        } else if shapeSelect.selectedSegmentIndex == 3 {
            apple.text = "\(upsideDownTriangle(number: num))"

        } else {
            apple.textAlignment = .left
            apple.text = "\(pyramid(number: num))"

        }
        

    }
    
}


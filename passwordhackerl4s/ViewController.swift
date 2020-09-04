//
//  ViewController.swift
//  passwordhackerl4s
//
//  Created by 森田貴帆 on 2020/09/04.
//  Copyright © 2020 森田貴帆. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label1000: UILabel!
    @IBOutlet var label100: UILabel!
    @IBOutlet var label10: UILabel!
    @IBOutlet var label1: UILabel!
    @IBOutlet var countlabel: UILabel!
    var pass: Int = 0415
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func START(){
        for i in 0...pass{
            countlabel.text = String(i)
            //処理を0.0005秒待機する
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            if i == pass{
                var digits = [Int]()
                for _ in 0...3{
                    digits.append(pass % 10)
                    pass = pass / 10
                }
                label1.text = String(digits[0])
                label10.text = String(digits[1])
                label100.text = String(digits[2])
                label1000.text = String(digits[3])
            }
        }
        countlabel.text = "解析が終わりました"
    }
    @IBAction func RESET(){
        pass = 0415
        countlabel.text = "STARTを押して解析開始"
        label1.text = "0"
        label10.text = "0"
        label100.text = "0"
        label1000.text = "0"
           
    }
}


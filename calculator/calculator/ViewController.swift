//
//  ViewController.swift
//  calculator
//
//  Created by hqq1 on 16/3/21.
//  Copyright © 2016年 hqq1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculator:calcu = calcu()
    var xshc:String = ""
    var huancun = 0.0
    var huancun2:Double?

    @IBOutlet weak var xianshi: UITextField!
    @IBAction func num0(sender: UIButton) {
        click("0")
    }
    @IBAction func num1(sender: UIButton) {
        click("1")
    }
    @IBAction func num2(sender: UIButton) {
        click("2")
    }
    @IBAction func num3(sender: UIButton) {
        click("3")
    }
    @IBAction func num4(sender: UIButton) {
        click("4")
    }
    @IBAction func num5(sender: UIButton) {
        click("5")
    }
    @IBAction func num6(sender: UIButton) {
        click("6")
    }
    @IBAction func num7(sender: UIButton) {
        click("7")
    }
    @IBAction func num8(sender: UIButton) {
        click("8")
    }
    @IBAction func num9(sender: UIButton) {
        click("9")
    }
    @IBAction func point(sender: UIButton) {
        click(".")
    }
    @IBAction func add(sender: UIButton) {
        click("+")
        calculator.setdqsf(.add)
        temp()
    }
    @IBAction func jian(sender: UIButton) {
        click("_")
        calculator.setdqsf(.jian)
        temp()
    }
    @IBAction func cheng(sender: UIButton) {
        click("*")
        calculator.setdqsf(.cheng)
        temp()
    }
    @IBAction func chu(sender: UIButton) {
        click("÷")
        calculator.setdqsf(.chu)
        temp()
    }
    @IBAction func C(sender: UIButton) {
        xshc = ""
        huancun = 0.0
        huancun2 = nil
        calculator.setdqsf(.none)
        self.xianshi.text = ""
    }
    @IBAction func dengyu(sender: UIButton) {
        temp()
    }
    func click(number:String) {
        xshc += number
        self.xianshi.text = xshc
    }
    func temp() {
        
        if !xshc.isEmpty {
            let linshi = xshc as NSString
            huancun = linshi.doubleValue
            xshc = ""
        }
        let linshi = huancun
        var result = ""
        
        if let fornt_number = huancun2 {
            result = calculator.qresult(fornt_number,test2: linshi)
            
            self.xianshi.text = result
            let lin = result as NSString
            huancun2 = lin.doubleValue
        } else {
            huancun2 = huancun
            huancun = 0.0
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        xianshi.editing
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


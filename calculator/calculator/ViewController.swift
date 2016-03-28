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

    @IBAction func num0(sender: UIButton) {
        点按("0")
    }
    @IBAction func num1(sender: UIButton) {
        点按("1")
    }
    @IBAction func num2(sender: UIButton) {
        点按("2")
    }
    @IBAction func num3(sender: UIButton) {
        点按("3")
    }
    @IBAction func num4(sender: UIButton) {
        点按("4")
    }
    @IBAction func num5(sender: UIButton) {
        点按("5")
    }
    @IBAction func num6(sender: UIButton) {
        点按("6")
    }
    @IBAction func num7(sender: UIButton) {
        点按("7")
    }
    @IBAction func num8(sender: UIButton) {
        点按("8")
    }
    @IBAction func num9(sender: UIButton) {
        点按("9")
    }
    @IBAction func point(sender: UIButton) {
        点按(".")
    }
    @IBAction func add(sender: UIButton) {
        calculator.设置当前算法(.加法)
        求值()
    }
    @IBAction func jian(sender: UIButton) {
        calculator.设置当前算法(.减法)
        求值()
    }
    @IBAction func cheng(sender: UIButton) {
        calculator.设置当前算法(.乘法)
        求值()
    }
    @IBAction func chu(sender: UIButton) {
        calculator.设置当前算法(.除法)
        求值()
    }
    @IBAction func C(sender: UIButton) {
        xshc = ""
        huancun = 0.0
        huancun2 = nil
        calculator.设置当前算法(.未选择)
        self.屏幕.text = ""
    }
    @IBAction func dengyu(sender: UIButton) {
        求值()
    }
    func 点按(数字:String) {
        xshc += 数字
        self.屏幕.text = 显示缓存
    }
    func 求值() {
        
        if !xshc.isEmpty {
            let 临时 = xshc as NSString
            huancun = 临时.doubleValue
            xshc = ""
        }
        let 临时 = huancun
        var 结果 = ""
        
        if let 前一个数字 = huancun2 {
            结果 = 计算器.求结果(前一个数字, 被操作数: 临时)
            
            self.屏幕.text = 结果
            let 临 = 结果 as NSString
            huancun2 = 临.doubleValue
        } else {
            huancun2 = huancun
            huancun = 0.0
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        屏幕.editing
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


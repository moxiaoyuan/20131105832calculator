//
//  calculator.swift
//  calculator
//
//  Created by hqq1 on 16/3/31.
//  Copyright © 2016年 hqq1. All rights reserved.
//

import Foundation
struct calcu {
    private var dqsf:suanfa = .none
    
    
    mutating func setdqsf(linshi:suanfa) {
        dqsf = linshi
    }
    
    func readdqsf() -> suanfa! {
        return dqsf
    }
    
    enum suanfa {
        case add
        case jian
        case cheng
        case chu
        case none
        case delete
    }
    
    func qresult(test1:Double, test2:Double) ->String {
        var return1 = "0"
        switch dqsf {
        case .add:
            return1 = "\(test1 + test2)"
            break
        case .jian:
            return1 = "\(test1 - test2)"
            break
        case .cheng:
            return1 = "\(test1 * test2)"
            break
        case .chu where test2 != 0 :
            return1 = "\(test1 / test2)"
            break
        case .none:
            return1 = "未选择算法！"
            break
        default:
            return1 = "0 不能做被除数！"
            break
            
        }
        return return1
        
    }
}
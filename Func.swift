//
//  Func.swift
//  kk
//
//  Created by Никита Попов on 13.01.23.
//

import Foundation

extension ViewController{
    //MARK: func refresh ArrayPers
    func updatePers()->[Int]{
        var resArr = [Int]()
        var countPers = Int.random(in: 10...30)
        for _ in 0...countPers-1{
            resArr.append(Int.random(in: 1...820))
        }
        resArr = Array(Set(resArr))
        return resArr
    }
}

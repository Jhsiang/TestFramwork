//
//  Guess.swift
//  TestFramwork
//
//  Created by Jim Chuang on 2019/2/26.
//  Copyright © 2019 nhr. All rights reserved.
//

import Foundation

public class Guess:NSObject{
    private var ans:String? = nil
    var allArr:[String] {
        get{
            let arr = (0x30...0x39).map{String(Character(UnicodeScalar($0)))}
            var resArr = [String]()
            for i in arr{
                for j in arr{
                    for k in arr{
                        for m in arr{
                            if i != j, i != k, i != m, j != k, j != m, k != m{
                                resArr.append(i+j+k+m)
                            }
                        }
                    }
                }
            }
            return resArr
        }
    }

    @objc public func setAns(_ a:String){
        ans = a
    }

    @objc public func start() -> String?{
        guard var a = ans else { return nil }
        var ansArr = allArr
        while ansArr.count > 1 {
            print(ansArr.count)
            let guess = ansArr.randomElement()!
            print(guess)
            let (a,b) = getAB(guess, a)
            print((a,b))
            ansArr = ansArr.filter { (ansStr) -> Bool in
                if getAB(ansStr, guess) == (a,b){
                    return true
                }else{
                    return false
                }
            }
            print(ansArr.count)
        }
        return ansArr.first
    }

    private func getAB(_ str1:String, _ str2:String) -> (Int,Int){
        var a = 0
        var b = 0
        for (i1,v1) in str1.enumerated(){
            for (i2,v2) in str2.enumerated(){
                a += (i1 == i2 && v1 == v2) ? 1 : 0
                b += (i1 != i2 && v1 == v2) ? 1 : 0
            }
        }
        return (a,b)
    }
}

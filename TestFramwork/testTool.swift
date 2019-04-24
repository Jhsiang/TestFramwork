//
//  TestFramework.swift
//  TestFramwork
//
//  Created by Jim Chuang on 2019/2/25.
//  Copyright © 2019 nhr. All rights reserved.
//

import Foundation

public class JSPrint:NSObject{
    @objc public func output() -> String{
        return "this is JSPrint"
    }
}

public extension String{
    func convertInt() -> Int?{
        if let num = Int(self){
            return num
        }else{
            return nil
        }
    }
}

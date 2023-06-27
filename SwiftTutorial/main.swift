//
//  main.swift
//  Swift
//
//  Created by Test on 12.06.23.
//

import Foundation

//print("Arrays:")
//Arrays().declareArray()
//Arrays().declareEmptyArray()
//Arrays().declareAndInitializeArray()
//Arrays().importantArrayPropertiesAndMethodes()
//Arrays().allArrayPropertiesAndMethodes()

//test_print_vs_dump()

var x = 1

func erhöhe (_ x: Int) {
    var x = x
    x += 1
    print("in function: \(x)")
}

erhöhe(x)
print("out function: \(x)")

func erhöhe_inout (_ x: inout Int) {
    x += 1
    print("in function: \(x)")
}

erhöhe_inout(&x)
print("out function: \(x)")

 


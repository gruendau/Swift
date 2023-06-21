//
//  closures.swift
//  SwiftTutorial
//
//  Created by volker on 21.06.23.
//

import Foundation

struct Closures {
    
    func c1 () {
        let wort = {
            (zahl: Int) -> String in
            return String(zahl)
        }
        print( wort(1) )
    }
    
    func c2 () {
        let wort = { (zahl: Int) -> String in return String(zahl) }
        print( wort(1) )
    }
    
    func c3 () {
        let wort = { (zahl: Int) in return String(zahl) }
        print( wort(1) )
    }
    
    func c4 () {
        let wort = { (zahl: Int) in String(zahl) }
        print( wort(1) )
    }
    
}




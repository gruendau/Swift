//
//  print_vs_dump.swift
//  SwiftTutorial
//
//  Created by volker on 20.06.23.
//

import Foundation

class Person {
    var vorname: String
    var nachname: String
    
    init (vorname: String,
          nachname: String) {
        self.vorname = vorname
        self.nachname = nachname
    }
    
    func hallo () -> String {
        return "hallo" + vorname + nachname
    }
}

func test_print_vs_dump () {
    let volker = Person(vorname: "volker", nachname: "michel")

    print("print(): \(volker)")
    dump("dump(): \(volker)")
    dump(volker)
}



//
//  Array.swift
//  SwiftTutorial
//
//  Created by Test on 12.06.23.
//

import Foundation


func declareArray () {
    var a1: Array<String>
    var a2: [String]
    
    print("")
    print("declareArray:")
    print(type(of: a1))  // --> Array<String>
    print("")
    
    // Wegen gelben Fehlermeldungen
    a1 = ["x"]
    a2 = a1
    a1 = a2
    
}

func declareEmptyArray () {
    // Eines leeres Array für Stings deklarieren.
    var a1: Array<String> = Array()
    var a2: Array<String> = []
    var a3 = Array<String>()

    var a4: [String] = Array()
    var a5: [String] = []
    var a6 = [String]()
    
    print("")
    print("declareEmptyArray:")
    print(type(of: a1))  // --> Array<String>
    print(a1)            // --> []
    print("")
    
    // Wegen gelben Fehlermeldungen
    a1 = ["x"]
    a2 = a1
    a3 = a2
    a4 = a3
    a5 = a4
    a6 = a5
    a1 = a6
    
}

func declareAndInitializeArray () {
    // Eines leeres Array für Stings deklarieren und initialisieren (Werte zuweisen).
    var a1: Array<String> = Array(["volker", "nils"])
    var a2: Array<String> = ["volker", "nils"]
    var a3 = Array<String>(["volker", "nils"])

    var a4: [String] = Array(["volker", "nils"])
    var a5: [String] = ["volker", "nils"]
    var a6 = ["volker", "nils"]
    
    print("")
    print("declareAndInitializeArray:")
    print(type(of: a1))  // --> Array<String>
    print(a1)            // --> ["volker", "nils"]
    print("")
    
    // Wegen gelben Fehlermeldungen
    a1 = ["x"]
    a2 = a1
    a3 = a2
    a4 = a3
    a5 = a4
    a6 = a5
    a1 = a6
    
}




//
//  Functions.swift
//  SwiftTutorial
//
//  Created by volker on 12.06.23.
//

//  Dateien für die wiki-Seite ./functions

import Foundation

/*
 
func gruesse () -> String {
    return "hallo"
}
let function: () -> String = gruesse
print(function())   // --> hallo

let closure: () -> String = { () -> String in return "hallo" }
print(closure())    // --> hallo

let closure2: () -> String = { "hallo" }
print(closure2())    // --> hallo

func gruesseFunktion () -> String { "hallo" }
let gruesseClosure: () -> String = { "hallo" }

func gruesseFunktion2 () -> String { "hallo2" }
let gruesseClosure2 = { "hallo" }

// print(gruesseClosure2()) ---> hallo

let s: String = "volker"
let i: Int = 1
let d: Double = 1.1
//
let a1: Array<String> = ["volker", "nils"]   // struct Array<Element>
let a2: [String] = ["volker", "nils"]
let a3: Array = ["volker", "nils"]
let a4 = ["volker", "nils"]
//
let s1: Set<String> = ["volker", "nils"]     // struct Set<Element : Hashable>
let s2: Set = ["volker", "nils"]
//
let d1: Dictionary<Int, String> = [1: "volker", 2: "nils"]   // struct Dictionary<Key : Hashable, Value>
let d2: [Int: String] = [1: "volker", 2: "nils"]
let d3: Dictionary = [1: "volker", 2: "nils"]
let d4 = [1: "volker", 2: "nils"]

let int8: Int8 = -128   // Ganzzahlen von -128 ... 0 ... 127

class C {
    var name: String = "volker"
}
let c = C()
print(c.name)

protocol PersonProtokol {
    var vorname: String { get set }
    var nachname: String { get set }
    
    func gruesse () -> String
}

class PersonKlasse: PersonProtokol {

    var vorname: String = "volker"
    var nachname: String = "kasack"
    
    func gruesse() -> String {
        //return "Hallo \(vorname) \(nachname)!"
        return "Hallo " + vorname + " " + nachname + "!"
    }
}




let person = PersonKlasse()
print(person.gruesse())

enum Namen {
    case volker
    case nils
}

func gebeNamen () -> String {
    return "volker"
}

*/

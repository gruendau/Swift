//
//  Arrays.swift
//  SwiftTutorial
//
//  Created by Test on 12.06.23.
//

//  Dateien für die wiki-Seite ./arrays

import Foundation

struct Arrays {
    
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
        
        print("")
        print("declareEmptyArray:")
        
        // Eines leeres Array für Stings deklarieren.
        var a1: Array<String> = Array()
        var a2: Array<String> = []
        var a3 = Array<String>()

        var a4: [String] = Array()
        var a5: [String] = []
        var a6 = [String]()
        
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
        
        print("")
        print("declareAndInitializeArray:")
        
        // Eines leeres Array für Stings deklarieren und initialisieren (Werte zuweisen).
        var a1: Array<String> = Array(["volker", "nils"])
        var a2: Array<String> = ["volker", "nils"]
        var a3 = Array<String>(["volker", "nils"])

        var a4: [String] = Array(["volker", "nils"])
        var a5: [String] = ["volker", "nils"]
        var a6 = ["volker", "nils"]
        
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

    func importantArrayPropertiesAndMethodes () {

        print("")
        print("importantArrayPropertiesAndMethodes:")
        
        // Wichtige Eigenschaften und Methoden von Arrays
        var names = ["volker", "nils", "monika", "jana", "hanna"]
        
        // .count Die Anzahl der Elemente im Array.
        print( names.count )  // --> 5
        
        // .append() Fügt am Ende des Arrays ein neues Element hinzu.
        names.append("rainer")
        print( names )  // --> ["volker", "nils", "monika", "jana", "hanna", "rainer"]
        
        // .append() Fügt die Elemente einer Sequenz am Ende des Arrays hinzu.
        names.append(contentsOf: ["ludwig", "anne"])
        print( names )  // --> ["volker", "nils", "monika", "jana", "hanna", "rainer", "ludwig", "anne"]
        
        // .remove() Entfernt das Element an der angegebenen Position und gibt es zurück.
        print( names.remove(at: 1) )  // --> nils
        print(names)  // --> ["volker", "monika", "jana", "hanna", "rainer", "ludwig", "anne"]
        
        
        // .sort() Sortiert die Elemente von oben nach unten.
        names.sort()
        print( names )  // --> ["anne", "hanna", "jana", "ludwig", "monika", "rainer", "volker"]
        
        // .reverse() Sortiert die Elemente von unten nach oben.
        names.reverse()
        print( names )  // --> ["volker", "rainer", "monika", "ludwig", "jana", "hanna", "anne"]
        
        
        // .map() Gibt ein Array zurück, das die Elemente entsprechend den Anforderungen des Closures verändert.
        print( names.map( { "vorname: " + $0 } ) )  // --> ["vorname: volker", "vorname: rainer", ...]
        
        // .filter() Gibt ein Array zurück, das Elemente entsprechend den Anforderungen des Closures enthält.
        print( names.filter( { $0.contains("an") } ) )  // --> ["anne", "hanna", "jana"]
        
        // .reduce() Gibt das Ergebnis entsprechend den Anforderungen des Closures zurück.
        print( names.reduce("") { $0 + $1 + " " } )  // --> volker rainer monika ludwig jana hanna anne
       
        print("")
    }

    func allArrayPropertiesAndMethodes () {
        print("")
        print("allArrayPropertiesAndMethodes:")
        
        // Eigenschaften und Methoden von Arrays van A biz Z
        var names = ["volker", "nils", "monika", "jana", "hanna"]
        /*
        // .applying()
        // Wendet den angegebenen Unterschied auf das Array an.
        //names.applying(<#T##difference: CollectionDifference<String>##CollectionDifference<String>#>)

        // .capacity
        // Die Gesamtzahl der Elemente, die das Array enthalten kann, ohne neuen Speicher zuzuweisen.
        print( names.capacity )  // --> 5

        // .customMirror
        // Spiegelt das Array wider.
        print( names.customMirror )  // --> Mirror for Array<String>

        // .contains()
        // Gibt zurück ob die Sequenz das angegebene Element enthält.
        print( names.contains("volker") )  // --> true

        // Gibt zurück ob die Sequenz das angegebene Element enthält.
        print( names.contains(where: { $0.hasPrefix("mo") }) )  // --> true

        // .compare()
        //
        //names.compare(<#T##lhs: Comparator.Compared##Comparator.Compared#>, <#T##rhs: Comparator.Compared##Comparator.Compared#>)

        // .compactMap()
        //
        //names.compactMap(<#T##transform: (String) throws -> ElementOfResult?##(String) throws -> ElementOfResult?#>)

        // .drop()
        // Gibt eine Teilsequenz zurück, indem Elemente übersprungen werden, für die das Closure 'true' ergibt.
        print( names.drop(while: { !$0.hasPrefix("v") }) ) // --> ["volker", "nils", "monika", "jana", "hanna"]
        
        // .dropFirst()
        // Gibt eine Teilsequenz zurück, die alle bis auf die angegebene Anzahl an Anfangselementen enthält.
        print( names.dropFirst() )  // --> ["nils", "monika", "jana", "hanna"]
        print( names.dropFirst(3) )  // --> ["jana", "hanna"]

        // .dropLast()
        // Gibt eine Teilsequenz zurück, die alle Endelemente bis auf die angegebene Anzahl enthält.
        print( names.dropLast() ) // --> ["volker", "nils", "monika", "jana"]
        print( names.dropLast(2) ) // --> ["volker", "nils", "monika"]
        
        // Gibt die Differenz zurück, die erforderlich ist, um das Array aus dem angegebenen Array zu erzeugen.
        print( names.difference(from: names+["günther"]) )  // --> CollectionDifference<String>(insertions: [], removals: [Swift.CollectionDifference<Swift.String>.Change.remove(offset: 5, element: "günther", associatedWith: nil)])

        // .distance()
        // Gibt den Abstand zwischen zwei Indizes zurück.
        print( names.distance(from: 2, to: 5) )  // --> 3
        
        // .endIndex
        //
        print( names.endIndex )  // --> 5
        
        // .enumerated()
        // Gibt eine Folge von Paaren (n, x) zurück, wobei n eine aufeinanderfolgende Ganzzahl darstellt, die bei Null beginnt, und x ein Element der Folge darstellt.
        print( names.enumerated() )  // --> EnumeratedSequence<Array<String>>(_base: ["volker", "nils", "monika", "jana", "hanna"])
        
        // .filter()
        // Gibt ein Array zurück, das Elemente entsprechend den Anforderungen des Closures enthält.
        print( names.filter( { $0.contains("an") }) )  // --> ["jana", "hanna"]

        // .first
        //
        print( names.first )  // --> Optional("volker")
         
        // .first()
        //
        print( names.first(where: { $0.hasPrefix("n") }) )  // --> Optional("nils")

        // .firstIndex()
        //
        print( names.firstIndex(of: "volker") )  // --> Optional(0)
         
        // .flatMap()
        //
        // names.flatMap(<#T##transform: (String) throws -> Sequence##(String) throws -> Sequence#>)
        
        //
        names.forEach( { print($0) } )  // --> volker ...

        //
        print( names.formatted() )  // --> volker, nils, monika, jana und hanna
        
        //
        print( names.indices )  // --> 0..<5

        // Fügt ein neues Element an der angegebenen Position ein.
        names.insert("karl", at: 3)
        print( names )  // --> ["volker", "nils", "monika", "karl", "jana", "hanna"]

        //
        print( names.isEmpty )  // --> false


        // Gibt eine neue Zeichenfolge zurück, indem die Elemente der Sequenz verkettet werden und zwischen jedem Element das angegebene Trennzeichen eingefügt wird.
        print( names.joined(separator: "+") )  // --> volker+nils+monika+karl+jana+hanna

        print( names.joined() )  // --> volkernilsmonikakarljanahanna

        // The last element of the collection.
        print( names.last )  // --> Optional("hanna")

        print(names.lazy)  // --> LazySequence<Array<String>>(_base: ["volker", "nils", "monika", "karl", "jana", "hanna"])

        print( names.last(where: { $0.contains("o") }) )  // --> Optional("monika")
        
        // .filter()
        // Gibt ein Array zurück, das Elemente entsprechend den Anforderungen des Closures enthält.
        print( names.filter( { $0.contains("an") } ) )  // --> ["jana", "hanna"]

        print( names.lastIndex(where: { $0.contains("o") }) )  // --> Optional(2)

        print( names.lastIndex(of: "volker") )  // --> Optional(0)

        // Gibt einen Iterator über die Elemente der Collection zurück.
        print( names.makeIterator() )  // --> ndexingIterator<Array<String>>(_elements: ["volker", "nils", "monika", "jana", "hanna"], _position: 0)
        
        // Gibt das maximale Element in der Sequenz zurück.
        print( names.max() )  // --> Optional("volker")

        print( names.min() )  // --> Optional("hanna")

        // Ordnet die Elemente der Sammlung neu an, sodass alle Elemente, die mit dem angegebenen Prädikat übereinstimmen, nach allen Elementen sind, die nicht übereinstimmen.
        print( names.partition(by: { $0.contains("n") }) )  // --> 1
        print( names )  // --> ["volker", "nils", "monika", "jana", "hanna"]
        
        // Entfernt das letzte Element der Sammlung und gibt es zurück.
        print( names.popLast() ) // --> Optional("hanna")

        // Gibt eine Teilsequenz bis zur angegebenen maximalen Länge zurück, die die Anfangselemente der Sammlung enthält.
        print( names.prefix(3) )  // --> ["volker", "nils", "monika"]

        
        print( names.publisher )  // --> Sequence<Array<String>, Never>(sequence: ["volker", "nils", "monika", "jana"])

        //
        print( names.randomElement() )  // --> Optional("jana")
        
        // print(names.reduce("", { $0 < $1 }))
        
        print( names.remove(at: 1) )  // --> nils
        print( names )  // --> ["volker", "monika", "jana"]
        
        // .removeAll()
        //
        names.removeAll()
        print( names )  // --> []
*/
        names = ["karl", "volker", "phil", "louis", "joe", "jana"]
        //
        print( names.removeLast() )  // --> jana
        
        //
        print( names.removeFirst() )  // --> karl
        
        // Ersetzt einen Bereich von Elementen durch die Elemente in der angegebenen Sammlung.
        names.replaceSubrange(Range(0...1), with: ["ludwig", "markus", "winfied", "manuela"])
        print( names )  // --> ["ludwig", "markus", "winfied", "manuela", "louis", "joe"]
        
        names.reverse()
        print( names )  // --> ["joe", "louis", "manuela", "winfied", "markus", "ludwig"]
        
        // .reversed()
        //
        print( names.reversed() ) // --> ReversedCollection<Array<String>>(_base: ["manuela", "winfied", "markus", "ludwig"])
        print( names )  // --> ["manuela", "winfied", "markus", "ludwig"]
        

        // print(names.starts(with: "w"))  //-->
        names.shuffle()
        print( names )  // --> ["ludwig", "winfied", "markus", "manuela"]

        print( names.sorted(by: < ) )  // --> ["ludwig", "manuela", "markus", "winfied"]

        names.sort()
        print( names )  // --> ["hanna", "jana", "monika", "nils", "volker"]

        print( names.shuffled() )  // --> ["karl", "jana", "volker", "joe"]

        // Gibt die längstmöglichen Teilsequenzen der Sammlung in der Reihenfolge um Elemente zurück, die dem angegebenen Element entsprechen.
        print( names.split(separator: "jana") )  // --> [ArraySlice(["joe", "karl", "volker"])]
        
        // Die Position des ersten Elements in einem nicht leeren Array.
        print( names.startIndex )  // --> 0
        
        // Die Position des Arrays „hinter dem Ende“, also die Position, die um eins größer ist als das letzte gültige Indexargument.

        print( names )  // --> ["jana", "joe", "karl", "volker"]
        names.swapAt(2, 0)
        print( names )  // --> ["karl", "joe", "jana", "volker"]

        // names.split(whereSeparator: <#T##(String) throws -> Bool#>)
        
        
        print( names.sorted(by: >) )  // -->
        print( names )  // -->
        
        
        print("")
        
       

        

        names = ["volker", "monika", "jana", "karl"]
        names.shuffle()
        print( names )  // --> ["monika", "jana", "karl", "volker"]
        
        //
        print( names.last )  // --> Optional("anne")
        
        //
        print( names.lazy )  // --> LazySequence<Array<String>>(_base: ["volker", "jana", "karl", "monika"])

        //
        print( names.map ( { "vorname: " + $0 } ))
        
        //
        print( names.publisher )  // --> Sequence<Array<String>, Never>(sequence: ["volker", "monika", "jana", "karl", "hanna", "rainer", "ludwig", "anne"])
         
        
    }

    
}

// Missing:
//names.formIndex(after: <#T##Int#>)
// names.replaceSubrange(Range<Int>, with: <#T##Collection#>)


/*
// Shortened forms are preferred
var emptyDoubles: [Double] = []

// The full type name is also allowed
var emptyFloats: Array<Float> = Array()


var names = ["volker", "nils", "monika", "jana", "hanna"]

names.append("rainer")

var names2 = ["ludwig", "anne"]

names.append(contentsOf: names2)

print(names)  // --> ["volker", "nils", "monika", "jana", "hanna", "rainer", "ludwig", "anne"]

print(names)  // --> ["volker", "nils", "monika", "jana", "hanna", "rainer"]

names.remove(at: 1)

print(names)  // --> ["volker", "monika", "jana", "hanna", "rainer"]

print(names.count)  // --> 5

print(names.endIndex)  // --> 5

print(names.debugDescription)  // --> ["volker", "monika", "jana", "hanna", "rainer"]

print(names.hashValue)  // --> -5156789215428317686

print(names.startIndex)  // --> 0

// names.encode(to: JSONEncoder)

// names.removeAll()

print(names)  // --> []

print(names.capacity)  // --> 0

print(names.distance(from: 2, to: 5))  // --> 3

//names.formIndex(after: 2)

names.insert("karl", at: 3)

print(names)  // --> ["volker", "monika", "jana", "karl", "hanna", "rainer", "ludwig", "anne"]

// names.replaceSubrange(Range<Int>, with: <#T##Collection#>)

print(names.first)  // --> Optional("volker")

print(names.last)  // --> Optional("anne")

print(names.indices)  // --> 0..<8

print(names.isEmpty)  // --> false

print(names.publisher)  // --> Sequence<Array<String>, Never>(sequence: ["volker", "monika", "jana", "karl", "hanna", "rainer", "ludwig", "anne"])

print(names.first(where: { $0.hasPrefix("mo") } ))  // --> Optional("monika")

print(names.joined(separator: "-"))  // --> volker-monika-jana-karl-hanna-rainer-ludwig-anne

print(names.enumerated())  // --> EnumeratedSequence<Array<String>>(_base: ["volker", "monika", "jana", "karl", "hanna", "rainer", "ludwig", "anne"])

print(names.dropFirst(3))  // --> ["karl", "hanna", "rainer", "ludwig", "anne"]

print(names.reversed())  // --> ReversedCollection<Array<String>>(_base: ["volker", "monika", "jana", "karl", "hanna", "rainer", "ludwig", "anne"])

names = ["volker", "monika", "jana", "karl"]
names.shuffle()
print(names)  // --> ["monika", "jana", "karl", "volker"]

print(names.lazy)  // --> LazySequence<Array<String>>(_base: ["volker", "jana", "karl", "monika"])

//names.applying(<#T##difference: CollectionDifference<String>##CollectionDifference<String>#>)

print(names.customMirror)  // --> Mirror for Array<String>

print(names.contains("volker"))  // --> true

print(names.contains(where: { $0.hasPrefix("ka")}))  // --> true

//  names.compare(<#T##lhs: Comparator.Compared##Comparator.Compared#>, <#T##rhs: Comparator.Compared##Comparator.Compared#>)

// names.compactMap(<#T##transform: (String) throws -> ElementOfResult?##(String) throws -> ElementOfResult?#>)

print(names.dropFirst())  // --> ["monika", "karl", "jana"]

print(names.dropLast()) // --> ["jana", "volker", "karl"]

print(names.drop(while: { !$0.hasPrefix("v")} )) // --> ["volker"]

print(names.difference(from: names+["günther"]))  // --> CollectionDifference<String>(insertions: [], removals: [Swift.CollectionDifference<Swift.String>.Change.remove(offset: 4, element: "günther", associatedWith: nil)])

print(names.filter( { $0.hasPrefix("v")} ))  // --> ["volker"]

print(names.first)  // --> Optional("karl")
print(names.first(where: { $0.hasPrefix("v")}))  // --> Optional("volker")

print(names.firstIndex(of: "vo"))  // --> nil
print(names.firstIndex(of: "karl"))  // --> Optional(1)



print(names.formatted())  // --> karl, monika, jana und volker

// names.flatMap(<#T##transform: (String) throws -> Sequence##(String) throws -> Sequence#>)
names.forEach( { print($0) } )  // --> volker ...

print(names.insert("joe", at: 2))

print(names.map( { "vorname: " + $0 } ))

// Die Position des ersten Elements in einem nicht leeren Array.
print(names.startIndex)  // --> 0
// Die Position des Arrays „hinter dem Ende“, also die Position, die um eins größer ist als das letzte gültige Indexargument.
print(names.endIndex)  // --> 5

// Gibt eine neue Zeichenfolge zurück, indem die Elemente der Sequenz verkettet werden und zwischen jedem Element das angegebene Trennzeichen eingefügt wird.
print(names.joined(separator: "+"))  // --> jana+volker+joe+karl+monika

print(names.joined())  // --> monikakarljoejanavolker

// The last element of the collection.
print(names.last)  // --> Optional("monika")

print(names.lazy)  // --> LazySequence<Array<String>>(_base: ["volker", "karl", "joe", "monika", "jana"])

print(names.last(where: { $0.contains("o") }))  // --> Optional("joe")

// names.lexicographicallyPrecedes(<#T##other: Sequence##Sequence#>)

print(names.lastIndex(where: { $0.contains("o") }))  // --> Optional(2)

print(names.lastIndex(of: "volker"))  // --> Optional(1)

// Gibt das maximale Element in der Sequenz zurück.
print(names.max())  // --> Optional("volker")

print(names.min())  // --> Optional("jana")

// Gibt einen Iterator über die Elemente der Collection zurück.
print(names.makeIterator())  // --> IndexingIterator<Array<String>>(_elements: ["karl", "monika", "joe", "volker", "jana"], _position: 0)

print(names.publisher)  // --> Sequence<Array<String>, Never>(sequence: ["jana", "monika", "joe", "volker", "karl"])

// Entfernt das letzte Element der Sammlung und gibt es zurück.
print(names.popLast()) // --> Optional("monika")

// Gibt eine Teilsequenz bis zur angegebenen maximalen Länge zurück, die die Anfangselemente der Sammlung enthält.
print(names.prefix(3))  // --> ["karl", "volker", "joe"]

// Ordnet die Elemente der Sammlung neu an, sodass alle Elemente, die mit dem angegebenen Prädikat übereinstimmen, nach allen Elementen sind, die nicht übereinstimmen.
print(names.partition(by: { $0.contains("n")  }))  // --> 3
print(names)  // --> ["karl", "volker", "joe", "jana"]

names = ["karl", "volker", "joe", "jana"]
print(names.remove(at: 1))  // --> volker
print(names)  // --> ["karl", "joe", "jana"]

// print(names.removeAll())

// Ersetzt einen Bereich von Elementen durch die Elemente in der angegebenen Sammlung.
names.replaceSubrange(Range(0...1), with: ["ludwig", "markus", "winfied"])
print(names)  // --> ["ludwig", "markus", "winfied", "jana"]

let x = names.reversed()  // --> ReversedCollection<Array<String>>(_base: ["ludwig", "markus", "winfied", "jana"])
print(x)
print(names)  // --> ["ludwig", "markus", "winfied", "jana"]

names.reverse()
print(names)  // --> ["jana", "winfied", "markus", "ludwig"]

print(names.randomElement())  // --> Optional("winfied")
print(names.removeLast())  // --> ludwig
print(names.removeFirst())  // --> jana

// print(names.reduce("", { $0 < $1 }))

// print(names.starts(with: "w"))  //-->
names.shuffle()
print(names)  // -->

print(names.sorted(by: < ))  // --> ["markus", "winfied"]

names = ["karl", "volker", "joe", "jana"]
names.sort()
print(names)  // --> ["jana", "joe", "karl", "volker"]

print(names.shuffled())  // --> ["karl", "jana", "volker", "joe"]

// Gibt die längstmöglichen Teilsequenzen der Sammlung in der Reihenfolge um Elemente zurück, die dem angegebenen Element entsprechen.
print(names.split(separator: "jana"))  // --> [ArraySlice(["joe", "karl", "volker"])]

print(names)  // --> ["jana", "joe", "karl", "volker"]
names.swapAt(2, 0)
print(names)  // --> ["karl", "joe", "jana", "volker"]

// names.split(whereSeparator: <#T##(String) throws -> Bool#>)
names.sorted(by: >)


*/





/*
 

 var primeNumbers = [2, 3, 5]
 print("Array1: \(primeNumbers)")

 var evenNumbers = [4, 6, 8]
 print("Array2: \(evenNumbers)")

 // join two arrays
 primeNumbers.append(contentsOf: evenNumbers)
 
removeFirst() - to remove the first element
removeLast() - to remove the last element
removeAll() - to remove all elements of an array
sort()    sorts array elements
shuffle()    changes the order of array elements
forEach()    calls a function for each element
contains()    searches for the element in an array
swapAt()    exchanges the position of array elements
reverse()    reverses the order of array elements


*/




# Swift

#### Konstanten [Constants]
Konstanten sind Objekte zur Speicherung von Werten und/oder Funktionen, die nicht geändert werden können.
```swift
// Allgemein
let Konstante: Typ = Wert    // Die Konstante 'Konstante' vom Typ 'Typ' soll eden Wert 'Wert' haben.

// Beispiel
let c1: String = "volker"  
let c2 = "volker"            // Compiler bestimmt den Typ [type inference]
```

#### Variablen [Variables]
Variablen sind Objekte zur Speicherung von Werten und/oder Funktionen, die geändert werden können.
```swift
var v1: String = "volker"
var v2 = "volker"
var v3: String { "volker" }  // Berechnete Variable [calculated property] 
```

#### Typen [Types]
Typen sind Vorgaben für den Aufbau von Objekten.   
[Types](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/types)

#### Basis Typen [Built-in Types]

```swift
let c: Character = "a"
let s: String = "volker"
let b: Bool = true
let i: Int = -1            // positive und negative Ganzzahen
let i8: Int8 = -1          // Ganzzahlen von -128 bis 127 - (Int8, Int16, Int32, Int64, Int)
let u: UInt = 1            // nur positive Ganzzahen
let f: Float = 1.1
let d: Double = 1.1
```

#### Sammlungs Typen [Collection Types]
Collections sind Sammlungen von Daten in Listen.   
[Collection Types](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes)
##### Arrays
Ein Array ist eine geordnete Liste von Elementen [items].
```swift
let a1: Array<String> = ["volker", "nils"]   // struct Array<Element>
let a2: [String] = ["volker", "nils"]
let a3: Array = ["volker", "nils"]
let a4 = ["volker", "nils"]
```
##### Sets
Ein Set ist eine ungeordnete Liste von unterschiedlichen Elementen [items].
```swift
let s1: Set<String> = ["volker", "nils"]     // struct Set<Element : Hashable>
let s2: Set = ["volker", "nils"]
```
##### Dictionaries
Ein Dictionary ist eine Liste von ungeordneten Schlüssel/Wert [key/value] Paaren. 
```swift
let d1: Dictionary<Int, String> = [1: "volker", 2: "nils"]   // struct Dictionary<Key : Hashable, Value>
let d2: [Int: String] = [1: "volker", 2: "nils"]
let d3: Dictionary = [1: "volker", 2: "nils"]
let d4 = [1: "volker", 2: "nils"]
```

#### Optionale Typen [Optional Types]
Ein optionaler Typ ist eine Typ der auch nicht (nil) enthalten darf.   
[Optional Type](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/types/#Optional-Type)
```swift
let o1: Optional<String>    //  Optional<Wrapped>
let o2: String!
```

#### Opaque Typen [Opaque Types]
Ein opaquer Typ der sich verhalten soll wie ein zugeordneter Typ.   
[Opaque Types](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/opaquetypes/)
```swift
```

#### Funktionen [Functions]
Eine Funktion ist eine Handlungsanweisung.   
[Functions](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions)
```swift
func gebeNamen () -> String {
    return "volker"
}
```

#### Closures [Closures]
Ein Closure ist eine Handlungsanweisung.   
[Closures](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures)
```swift
```

#### Aufzählungen [Enumerations]
Eine Enumeration ist eine Aufzählung von Werten.  
[Enumerations](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/enumerations)
```swift
enum Namen {
    case volker
    case nils
}
```

#### Klassen [Classes]
Eine Klasse ist ein Typ für referenzierbare Objekte zur Datenkapselung von Eigenschaften [properties] und Methoden [methodes].    
[Classes](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures)
```swift
// Allgemein
class EineKlasse {
    // Definition des Inhalts der Klasse
}

// Beispiel
class Person {
    // Property
    var name: String = "volker"
    // Methode
    func gruesse () -> String {
        return "Hallo " + name
    }
}
```

#### Strukturen [Structs]
Eine Struktur ist ein Typ für nicht referenzierbare Objekte zur Datenkapselung von Eigenschaften [properties] und Methoden [methodes].   
[Structs](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures)
```swift
// Allgemein
struct EineStruktur {
    // Definition des Inhalts der Struktur
}

// Beispiel
struct Person {
    var name: String = "volker"
}
```

#### Protokolle [Protokols]
Ein Protokoll bescheibt Anforderungen an benutzerdefinierte Typen die mit dem Protokoll konform gehen sollen.   
[Protokols](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/protocols)
```swift
// Allgemein
protocol EinProtokoll {
    // Definition des Inhalts des Protokolls
}

// Beispiel
protocol PersonProtokoll {
    var vorname: String { get set }
    var nachname: String { get set }
    
    func gruesse () -> String
}

// Anwendung
class PersonKlasse: PersonProtokoll {
    var vorname: String = "volker"
    var nachname: String = "kasack"
    
    func gruesse() -> String {
        return "Hallo " + vorname + " " + nachname + "!"
    }
}
let person = PersonKlasse()
print(person.gruesse())   // --> Hallo volker kasack
```

#### Eigenschaften [Propeties]
Properties sind Konstanten oder Variablen in Klassen oder Strukturen.   
[Properties](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/properties)
```swift
```

#### Methoden [Methodes]
Methoden sind Funktionen in Klassen oder Strukturen.   
[Methodes](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/methodes)
```swift
```

#### Indexe [Subscripts]
Indexe sind die Positionen von Elementen in geordneten Listen (Arrays).    
[Subscripts](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/subscripts)
```swift
```


#### Schleifen [Loops]
[Control Flow](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow)
```swift
```




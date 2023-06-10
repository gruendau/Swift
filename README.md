# Swift

<!--- *** CONSTANTS *** --->
<details> <summary>Konstanten</summary>  
    
Konstanten [Constants] sind Objekte zur Speicherung von Werten und/oder Funktionen, die nicht geändert werden können.

```swift
// Allgemein
let konstante: Typ = wert    // Die Konstante 'konstante' vom Typ 'Typ' soll den Wert 'wert' haben.

// Beispiel 1
let c1: String = "volker"  
let c2 = "volker"            // Compiler bestimmt den Typ [type inference]

// Beispiel 2 - Die Konstante 'function' speichert eine Funktion 'gruesse', die als Funktion übergeben wird.
func gruesse () -> String {
    return "hallo"
}
let function: () -> String = gruesse                             // print(function()) --> hallo

// Beispiel 3 - Die Konstante 'closure' speichert eine Funktion, die als Closure übergeben wird.
let closure: () -> String = { () -> String in return "hallo" }   // print(closure()) --> hallo
```
</details>

<!--- *** VARIABLES *** --->
<details> <summary>Variablen</summary> 
    
Variablen [Variables] sind Objekte zur Speicherung von Werten und/oder Funktionen, die geändert werden können.
    
```swift
    var v1: String = "volker"
    var v2 = "volker"
    var v3: String { "volker" }  // Berechnete Variable [calculated property] 
```
</details>

<!--- *** TYPES *** ---> 
<details> <summary>Typen</summary> 
     
[Typen](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/types) sind Vorgaben für den Aufbau von Objekten.  

<!--- *** BUILT-IN TYPES *** --->
<details> <summary>. Basis Typen</summary> 
    
Basis Typen [Built-in Types]

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
</details>
    
<!--- *** COLLECTIONS *** --->
<details> <summary>. Collections</summary> 
    
[Collections](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes) sind Sammlungen     von Daten in Listen.
    
<!--- *** ARRAYS *** ---> 
<details> <summary>.. Arrays</summary> 
    
Ein Array ist eine geordnete Liste von Elementen [items].
    
```swift
let a1: Array<String> = ["volker", "nils"]   // struct Array<Element>
let a2: [String] = ["volker", "nils"]
let a3: Array = ["volker", "nils"]
let a4 = ["volker", "nils"]
```
</details>

<!--- *** SETS *** --->
<details> <summary>.. Sets</summary> 
    
Ein Set ist eine ungeordnete Liste von unterschiedlichen Elementen [items].
    
```swift
let s1: Set<String> = ["volker", "nils"]     // struct Set<Element : Hashable>
let s2: Set = ["volker", "nils"]
```
</details>

<!--- *** DICTIONARIESS *** --->
<details> <summary>.. Dictionaries</summary>
    
Ein Dictionary ist eine Liste von ungeordneten Schlüssel/Wert [key/value] Paaren. 
    
```swift
let d1: Dictionary<Int, String> = [1: "volker", 2: "nils"]   // struct Dictionary<Key : Hashable, Value>
let d2: [Int: String] = [1: "volker", 2: "nils"]
let d3: Dictionary = [1: "volker", 2: "nils"]
let d4 = [1: "volker", 2: "nils"]
```
</details>
    
<!--- *** END COLLECTIONS *** --->    
</details>  

<!--- *** OPTIONALS *** --->
<details> <summary>. Optionale Typen</summary>
    
Ein optionaler Typ [Optional Type](https://docs.swift.org/swift-book/documentation/the-swift-programming-     language/types/#Optional-Type) ist eine Typ der auch nicht 'nil' enthalten darf.
    
```swift
let o1: Optional<String>    //  Optional<Wrapped>
let o2: String!
```
</details>    
    
<!--- *** OPAQUE TYPES *** --->
<details> <summary>. Opaque Typen</summary>
    
    Ein opaquer Typ der sich verhalten soll wie ein zugeordneter Typ.   
    [Opaque Types](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/opaquetypes/)
    ```swift
    ```
</details>    
    
    
<!--- *** END TYPES *** --->    
</details>

<!--- *** FUNCTIONS *** --->
<details> <summary>Funktionen</summary> 
    
Eine [Function](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions) ist eine  Handlungsanweisung.   

```swift
func gebeNamen () -> String {
    return "volker"
}
```
</details>

<!--- *** CLOSURESS *** --->
<details> <summary>Closures</summary> 
    
Ein [Closure](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures) ist eine Handlungsanweisung.   

    
```swift
// Funktion vs. Closure
func gruesseFunktion () -> String { "hallo" }     // print(gruesseFunktion()) -> hallo
let gruesseClosure1: () -> String = { "hallo" }   // print(gruesseClosure1()) -> hallo

let gruesseClosure2 = { "hallo" }                 // print(gruesseClosure2()) -> hallo
```
</details>

<!--- *** ENUMERATIONS *** --->
<details> <summary>Enumerationen</summary> 
    
Eine [Enumeration](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/enumerations) ist eine Aufzählung von Werten.  

```swift
enum Namen {
    case volker
    case nils
}
```
</details>

<!--- *** CLASSES *** --->
<details> <summary>Klassen</summary> 
    
Eine [Klasse](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures) ist ein Typ für referenzierbare Objekte zur Datenkapselung von Eigenschaften [properties] und Methoden [methodes].    

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
</details>
 
<!--- *** STRUCTS *** --->
<details> <summary>Strukturen</summary> 
    
Eine [Struktur](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures) ist ein Typ für nicht referenzierbare Objekte zur Datenkapselung von Eigenschaften [properties] und Methoden [methodes].   

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
</details>

<!--- *** PROTOKOLS *** --->
<details> <summary>Protokolle</summary> 
    
Ein [Protokoll](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/protocols) bescheibt Anforderungen an benutzerdefinierte Typen die mit dem Protokoll konform gehen sollen.   

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
let person = PersonKlasse()   // print(person.gruesse()) -> Hallo volker kasack
```
</details>

<!--- *** PROPERTIES *** --->
<details> <summary>Eigenschaften</summary> 
    
[Properties](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/properties) sind Konstanten oder Variablen in Klassen oder Strukturen.   

```swift
```
</details>

<!--- *** METHODESS *** --->
<details>
<summary>Methoden</summary> 
    
[Methoden](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/methodes) sind Funktionen in Klassen oder Strukturen.   

```swift
```
</details>

<!--- *** SUBSCRIPTS *** --->
<details> <summary>Indexe</summary> 
    
[Indexe](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/subscripts) [Subscripts] sind die Positionen von Elementen in geordneten Listen (Arrays).    

```swift
```
</details>

<!--- *** CONTROL FLOW *** --->
<details> <summary>Ablauf Kontrolle</summary>
    
[Control Flow](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow)
```swift
```
</details>


    
    
<!---    
<details> <summary>xxx</summary> 
</details>
--->

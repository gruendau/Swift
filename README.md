# Swift

#### Konstanten [Constants]
```swift
let c1: String = "volker"  
let c2 = "volker"            // Compiler bestimmt den Typ [type inference]
```

#### Variablen [Variables]
```swift
var v1: String = "volker"
var v2 = "volker"
var v3: String { "volker" }  // Berechnete Variable [calculated property] 
```

#### Typen [Types]
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

#### Kollektionen Typen [Collection Types]
[Collection Types](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/collectiontypes)
```swift
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
```

#### Optionale Typen [Optional Types]
[Optional Type](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/types/#Optional-Type)
```swift
let o1: Optional<String>    //  Optional<Wrapped>
let o2: String!
```

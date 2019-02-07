import UIKit

var name = "Ludovic"
name = "Paul"

name = String(15)

let a = 5
let b = 2

let c = Double(a) / Double(b)

//2.5
//2
//Crash

let temperature = 70
if temperature >= 65 && temperature <= 75 {
    print("The temperature is just right.")
} else if temperature < 65 {
    print("It's too cold.")
} else {
    print("It's too hot.")
}

switch temperature {
case ...64:
    print("It's too cold.")
case 65...75:
    print("The temperature is just right.")
default:
    print("It's too hot.")
}

func triple(value: Int) {
    let result = value * 3
    print(result)
}

triple(value: 10)

func multiply(_ firstNumber: Int, by secondNumber: Int) -> Int {
    let result = firstNumber * secondNumber
    return result
}

let resultat = multiply(2, by: 5)

var test = "etst"

let color = UIColor(red: 0.2, green: 0.1, blue: 0.5, alpha: 1)
let color2 = UIColor(hue: 0.2, saturation: 0.5, brightness: 0.3, alpha: 1)

struct Car {
    let make: String
    let year: Int
    let color: String

    func drive() {
        print("\(make) drives")
    }
}

let myCar = Car(make: "Honda", year: 2010, color: "Blue")
let myCar2 = Car(make: "Honda", year: 2011, color: "Blue")
myCar.drive()
myCar.year

struct Temperature {

    static let boilingTemp = Temperature(celsius: 100)
    static let freezingTemp = Temperature(celsius: 0)

    //Stored property
    var celsius: Double

    //Get only computed property
    var fahrenheit: Double {
        return celsius * 1.8 + 32
    }

    //Get Set computed property
    var kelvin : Double {
        get {
            return celsius + 273.15
        }

        set {
            celsius = newValue - 273.15
        }
    }

    init(celsius: Double) {
        self.celsius = celsius
    }

    init(fahrenheit: Double) {
        celsius = (fahrenheit - 32) / 1.8
    }

    init(kelvin: Double) {
        celsius = kelvin - 273.15
    }

}
let currentTemp = Temperature(celsius: 7)

let fahrenheitValue = 98.6
let celsiusValue = (fahrenheitValue - 32) / 1.8
let alertTemp = Temperature(celsius: celsiusValue)

var boiling = Temperature(celsius: 100)
boiling.fahrenheit
boiling.celsius = 90
boiling.kelvin = 0
boiling.celsius

let boiling2 = Temperature.freezingTemp

var temp2 = boiling
temp2

boiling.kelvin = 66
boiling

temp2









var names = ["Amy", "Brad", "Chelsea", "Dan", "Ludovic"]
var names2 = ["Amy", "Brad", "Chelsea", "Dan"]

var common = [String]()
for name in names {
    for otherName in names2 {
        if name == otherName {
            common.append(otherName)
        }
    }
}

let nameSet = Set(names)
let name2Set = Set(names2)
nameSet.subtracting(name2Set)

let chelsea = names.remove(at:2)
let dan = names.removeLast()
names.removeFirst()
names.removeAll()
names.randomElement()
print(names)

struct Toddler {
    var birthName: String
    var monthsOld: Int

    init?(birthName: String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        } else {
            self.birthName = birthName
            self.monthsOld = monthsOld
        }
    }
}

if var toddler = Toddler(birthName: "Test", monthsOld: 40) {
    toddler.monthsOld = 41
}

let x = Int("12")
let y = Int("24")

if let firstNumber = x, let secondNumber = y, secondNumber + firstNumber > 0 {
        print(firstNumber + secondNumber)
}

if let uppercasedFirst = names2.first?.uppercased() {

} else {
    print("Tableau vide")
}


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





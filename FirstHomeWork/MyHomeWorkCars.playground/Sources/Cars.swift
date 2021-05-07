import Foundation

struct StructCarsData {
    let manafacture: String
    let model: String
    let body: Body
    let yearOfIssue: Int?
    let carNumber: String?
    
    func getManafacture(index:Int) -> String{
        return manafacture
    }
    func getModel(index:Int) -> String {
        return model
    }
//    func getBody(nameBody:String) -> String {
//        return 0
//    }
    func getYear(index:Int) -> Int {
        return yearOfIssue!
    }
    func getCarNumber(index:Int) -> String {
        return carNumber!
    }
}

enum Body: String {
    case miniven = "minivenishe"
    case sedan = "sedanishe"
    case cupe = "cupe"
    case pickup = "pic"
    case cabrio = "cabriolet"
    case limo = "limuzin"
}

let mass: [String] = [String]()
//let mas2 = ["1","2"]

let cars = Body.cabrio.rawValue
let car2 = Body.init(rawValue: "cabrio")
let carData = [
    StructCarsData(manafacture: "Toyota", model: "AE86", body: .cabrio, yearOfIssue: 10051986, carNumber: "A886AE70"),
    StructCarsData(manafacture: "Toyota", model: "AE86", body: .sedan, yearOfIssue: 10051986, carNumber: "A886AE70"),
    StructCarsData(manafacture: "BMW", model: "E90", body: .miniven, yearOfIssue: 12345678, carNumber: "B682MW71"),
    StructCarsData(manafacture: "BMW", model: "E90", body: .miniven, yearOfIssue: 11112011, carNumber: "B682MW72"),
    StructCarsData(manafacture: "BMW", model: "E90", body: .miniven, yearOfIssue: nil, carNumber: "B682MW70"),
    StructCarsData(manafacture: "Volvo", model: "X70", body: .pickup, yearOfIssue: 12122012, carNumber: nil),
    StructCarsData(manafacture: "Lada", model: "2105", body: .limo, yearOfIssue: nil, carNumber: nil),
    StructCarsData(manafacture: "Lada", model: "2106", body: .limo, yearOfIssue: 00000000, carNumber: "A00AC70"),
    StructCarsData(manafacture: "Lada", model: "2106", body: .limo, yearOfIssue: 12345678, carNumber: "Y001DR70"),
]

//Text(struncturu.manafcture)
//Text(struncturu.model)
//Text(struncturu.body.rawValue)
//Text(struncturu.yearOfIssue)
//Text(struncturu.carNumber)

//func addCars() {
//    carData.append(StructCarsData.init(manafacture: "String", model: "String", body: Body.cabrio, yearOfIssue: <#T##Int?#>, carNumber: <#T##String?#>))
//}



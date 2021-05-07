import UIKit
struct StructCarsData {
    let manafacture: String
    let model: String
    let body: Body.RawValue
    let yearOfIssue: Int?
    let carNumber: String?
    
    func getManafacture(index:Int) -> String{
        return manafacture
    }
    func getModel(index:Int) -> String {
        return model
    }

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

var carData = [
    StructCarsData(manafacture: "Toyota", model: "AE86", body: Body.cabrio.rawValue, yearOfIssue: 10051986, carNumber: "A886AE70"),
    StructCarsData(manafacture: "BMW", model: "E90", body: Body.sedan.rawValue, yearOfIssue: 12345678, carNumber: "B682MW71"),
    StructCarsData(manafacture: "Volvo", model: "X70", body: Body.limo.rawValue, yearOfIssue: 12122012, carNumber: nil),
    StructCarsData(manafacture: "Lada", model: "2105", body: Body.cupe.rawValue, yearOfIssue: nil, carNumber: nil),
    StructCarsData(manafacture: "Lada", model: "2106", body: Body.pickup.rawValue, yearOfIssue: 4232424, carNumber: "A00AC70"),
    StructCarsData(manafacture: "Lada", model: "2106", body: Body.miniven.rawValue, yearOfIssue: 12345678, carNumber: "Y001DR70"),
]

func findCar(bodyFind: String){
    var srtYear:String,strNumber:String
    for item in 0...carData.count-1{
        if (carData[item].body == bodyFind){
            let strBody:String = carData[item].body
            let strManafacture:String = carData[item].manafacture
            let strModel:String = carData[item].model
            if (carData[item].yearOfIssue == nil){
                srtYear = "-"
            }
            else {
                srtYear = String(describing: carData[item].yearOfIssue)
            }
            print("Прозиводитель "+strManafacture+"\n","Модель "+strModel+"\n","Тип кузова "+strBody+"\n","Год "+srtYear)
            if (carData[item].carNumber == nil){
                        //по заданию не отображаем номер автомобиля если он пустой
            }
            else {
                strNumber = String(carData[item].carNumber ?? "")
                print(" Номер автомобиля "+strNumber)
            }
        }
    }
}


func showCars(){
    var srtYear:String,strNumber:String
    for item in 0...carData.count-1{
        let strManafacture:String = carData[item].manafacture
        let strModel:String = carData[item].model
        let strBody:String = carData[item].body
        
        if (carData[item].yearOfIssue == nil){
            srtYear = "-"
        }
        else {
            srtYear = String(describing: carData[item].yearOfIssue)
        }
        print("Прозиводитель "+strManafacture+"\n","Модель "+strModel+"\n","Тип кузова "+strBody+"\n","Год "+srtYear)
        if (carData[item].carNumber == nil){
            //по заданию не отображаем номер автомобиля если он пустой
        }
        else {
            strNumber = String(carData[item].carNumber ?? "")
            print(" Номер автомобиля "+strNumber)
        }
    }
}

func addCars(manafacture:String, model:String, bodyValue:String, yearOfIssue:Int!,carNumber:String!){
    carData.append(StructCarsData(manafacture: manafacture, model: model, body: Body.RawValue(bodyValue), yearOfIssue: yearOfIssue, carNumber: carNumber))
}

print("Добро пожаловать в домашнее приложение №1")
print("Вы можете сделать выбор из нескольких функций \n Add \n Find \n Show")
print("Напишите Find для того что бы сортировать машины по типу кузова \n Напишите Show что бы показать список машин и информацию о них \n Напишите Add для того что бы добавить машину или машины в список машин \n Что бы выйти из программы напишите Exit")


switch readLine(){
case "Add":
    print("Add")
    addCars(manafacture: "New Car", model: "New Model", bodyValue: "New Body", yearOfIssue: 123, carNumber: "123")
    addCars(manafacture: "New Car", model: "New Model", bodyValue: "New Body", yearOfIssue: 123, carNumber: "1234")
    case "Find":
        print("Find New Body")
        findCar(bodyFind: "New Body")
    case "Show" :
        print("Show")
        showCars()
    default : print("Wrong Word try again")
}
//PlayGround не может сделать так что бы я мог писать консольные приложения(или я чего то не понимаю) и меня это маленько удручает, т.к я сначала написал штуку для использования и понял что она не работает(

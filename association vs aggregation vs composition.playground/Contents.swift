import UIKit

/// Aggregation
class Car {
    let id = 254687
    let model = "2000"
    var wheel: [Wheel]?    // can change it and replace by any wheel
}

class Wheel {
    var id: Int?
    var type: TypeWheel?
    
    enum TypeWheel {
        case BMW, Mitsubishi, Toyota
    }
    
    init(type: TypeWheel) {
        self.type = type
    }
}



/// Compoition
class Car2 {
    let id = 3328
    let model = "2000"
    let Engine = EngineBMW(model: .A_class) // can not change it and replace by any Engin
}

class EngineBMW {
    var id: Int?
    var model: Model?
    
    enum Model {
        case A_class, B_class, C_class
    }
    
    init(model: Model) {
        self.model = model
    }
}


/// Association
//Cares about type of relation between two object One-to-One or One-to-Many [ taking about relation]
///One-to-One
class Country{
    weak var president: President?
}

class President {
    var country: Country?
}

/// One-to-Many
struct Movie{
    var director: Director
}

struct Director{
    var movies: [Movie] = []
}

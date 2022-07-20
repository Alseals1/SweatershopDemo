import Foundation


struct Product: Identifiable {
    let id = UUID().uuidString
    
    let name: String
    let image: String
    let price: Int
}


var productList = [Product(name: "Lucci", image: "sweater1", price: 35),
                   Product(name: "Nike", image: "sweater2", price: 300),
                   Product(name: "Adidas", image: "sweater3", price: 109),
                   Product(name: "Levi", image: "sweater4", price: 90),
                   Product(name: "Gucci", image: "sweater5", price: 3880),
                   Product(name: "LV", image: "sweater6", price: 1220),
                   Product(name: "UA", image: "sweater7", price: 27),
                   Product(name: "Jordan", image: "sweater8", price: 59)]

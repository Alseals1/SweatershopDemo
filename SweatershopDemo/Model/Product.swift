import Foundation


struct Product: Identifiable {
    let id = UUID().uuidString
    
    let name: String
    let image: String
    let price: String
}


var productList = [Product(name: "Lucci", image: "sweater1", price: "59.99"),
                   Product(name: "Nike", image: "sweater2", price: "59.99"),
                   Product(name: "Adidas", image: "sweater3", price: "59.99"),
                   Product(name: "Levi", image: "sweater4", price: "59.99"),
                   Product(name: "Gucci", image: "sweater5", price: "59.99"),
                   Product(name: "LV", image: "sweater6", price: "59.99"),
                   Product(name: "UA", image: "sweater7", price: "59.99"),
                   Product(name: "Jordan", image: "sweater8", price: "59.99")]

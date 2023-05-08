let milk = Product(name: "Milk", expirationDate: createDate(day: 23, month: 10, year: 2022))
let cheese = Product(name: "Cheese", expirationDate: createDate(day: 9, month: 6, year: 2023))
let sausage = Product(name: "Sausage", expirationDate: createDate(day: 20, month: 6, year: 2023))
let bacon = Product(name: "Bacon", expirationDate: createDate(day: 8, month: 4, year: 2023))
let bread = Product(name: "Rye bread", expirationDate: createDate(day: 25, month: 6, year: 2023))
let baguette = Product(name: "Sliced baguette", expirationDate: createDate(day: 10, month: 6, year: 2023))
let egg = Product(name: "Egg", expirationDate: createDate(day: 23, month: 1, year: 2022))
let yogurt = Product(name: "Yogurt", expirationDate: createDate(day: 1, month: 7, year: 2023))
let chickenBreast = Product(name: "Chicken breast", expirationDate: createDate(day: 4, month: 5, year:2023))
let apples = Product(name: "Apples", expirationDate: createDate(day: 15, month: 6, year: 2023))
let carrots = Product(name: "Carrots", expirationDate: createDate(day: 10, month: 6, year: 2023))
let lettuce = Product(name: "Lettuce", expirationDate: createDate(day: 5, month: 6, year: 2023))
let bellPepper = Product(name: "Bell pepper", expirationDate: createDate(day: 12, month: 6, year: 2023))
let sourCream = Product(name: "Sour cream", expirationDate: createDate(day: 3, month: 7, year: 2023))
let frozenPeas = Product(name: "Frozen peas", expirationDate: createDate(day: 1, month: 1, year: 2024))
let salmon = Product(name: "Salmon", expirationDate: createDate(day: 25, month: 5, year: 2023))
let lemon = Product(name: "Lemon", expirationDate: createDate(day: 30, month: 5, year: 2023))

var products: [Product] = [milk, cheese, sausage, bacon, bread, baguette, egg, yogurt, chickenBreast, apples, carrots, lettuce, bellPepper, sourCream, frozenPeas, salmon, lemon]

let userDefaults = UserDefaults.standard
let productData = try? JSONEncoder().encode(products)
userDefaults.set(productData, forKey: "savedProducts")


func createDate(day: Int, month: Int, year: Int) -> Date? {
    let calendar = Calendar.current
    var components = DateComponents()
    components.day = day
    components.month = month
    components.year = year
    return calendar.date(from: components)
}

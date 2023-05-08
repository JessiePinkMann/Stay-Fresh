// Функция, которая возвращает список продуктов, у которых срок годности истекает сегодня или завтра
func getExpiringProducts(_ products: [Product]) -> [Product] {
    let calendar = Calendar.current
    let now = Date()
    var expiringProducts: [Product] = []
    for product in products {
        if let expirationDate = product.expirationDate {
            let daysLeft = calendar.dateComponents([.day], from: now, to: expirationDate).day ?? 0
            if daysLeft <= 1 {
                expiringProducts.append(product)
            }
        }
    }
    return expiringProducts
}

// Функция, которая возвращает список продуктов, у которых срок годности уже истек
func getExpiredProducts(_ products: [Product]) -> [Product] {
    let calendar = Calendar.current
    let now = Date()
    var expiredProducts: [Product] = []
    for product in products {
        if let expirationDate = product.expirationDate {
            if calendar.isDate(expirationDate, inSameDayAs: now) || expirationDate < now {
                expiredProducts.append(product)
            }
        }
    }
    return expiredProducts
}

func deleteProduct(at index: Int, from products: inout [Product]) {
    products.remove(at: index)
}

func addProduct(_ product: Product, to products: inout [Product]) {
    products.append(product)
}

// Получаем список всех продуктов из UserDefaults
let userDefaults = UserDefaults.standard
if let productData = userDefaults.data(forKey: "savedProducts") {
    let products = try? JSONDecoder().decode([Product].self, from: productData)

    // Получаем список продуктов, у которых срок годности истекает сегодня или завтра
    let expiringProducts = getExpiringProducts(products)

    // Получаем список продуктов, у которых срок годности уже истек
    let expiredProducts = getExpiredProducts(products)

    var mutableProducts = products
    deleteProduct(at: 0, from: &mutableProducts)

    let newProduct = Product(name: "Avocado", expirationDate: createDate(day: 1, month: 6, year: 2023))
    addProduct(newProduct, to: &mutableProducts)

    let updatedProduct = Product(name: "Cheese", expirationDate: createDate(day: 30, month: 6, year: 2023))
    updateProduct(at: 1, with: updatedProduct, in

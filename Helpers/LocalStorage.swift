import Foundation

class LocalStorage {

    private let productsKey = "products"
    private let recipesKey = "recipes"

    static let shared = LocalStorage()

    private init() {}

    func saveProducts(_ products: [Product]) {
        if let data = try? JSONEncoder().encode(products) {
            UserDefaults.standard.set(data, forKey: productsKey)
        }
    }

    func loadProducts() -> [Product] {
        if let data = UserDefaults.standard.data(forKey: productsKey),
           let products = try? JSONDecoder().decode([Product].self, from: data) {
            return products
        } else {
            return []
        }
    }

    func saveRecipes(_ recipes: [Recipe]) {
        if let data = try? JSONEncoder().encode(recipes) {
            UserDefaults.standard.set(data, forKey: recipesKey)
        }
    }

    func loadRecipes() -> [Recipe] {
        if let data = UserDefaults.standard.data(forKey: recipesKey),
           let recipes = try? JSONDecoder().decode([Recipe].self, from: data) {
            return recipes
        } else {
            return []
        }
    }
}


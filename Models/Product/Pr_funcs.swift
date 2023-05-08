import UserNotifications
class Product {
    var name: String
    var expirationDate: Date
    
    init(name: String, expirationDate: Date) {
        self.name = name
        self.expirationDate = expirationDate
    }
}

class ProductManager {
    
    var products: [Product] = []
    
    func addProduct(product: Product) {
        products.append(product)
    }
    
    func removeProduct(product: Product) {
        if let index = products.firstIndex(where: { $0.name == product.name }) {
            products.remove(at: index)
        }
    }
    
    func getAllProducts() -> [Product] {
        return products
    }
    
    func getProductByName(name: String) -> Product? {
        return products.first(where: { $0.name == name })
    }
    
    func getProductByExpirationDate(expirationDate: Date) -> Product? {
        return products.first(where: { $0.expirationDate == expirationDate })
    }
    
    func updateProduct(product: Product, newName: String?, newExpirationDate: Date?) {
        if let newName = newName {
            product.name = newName
        }
        if let newExpirationDate = newExpirationDate {
            product.expirationDate = newExpirationDate
        }
    }
    
    func getExpiringProducts_3() -> [Product] {
        let today = Date()
        let calendar = Calendar.current
        return products.filter { product in
            let expirationDate = product.expirationDate
            let daysLeft = calendar.dateComponents([.day], from: today, to: expirationDate).day ?? 0
            return daysLeft <= 3 // возвращаем продукты, у которых осталось 3 дня или меньше до истечения срока годности
        }
    }
    
    func getExpiringProducts_1() -> [Product] {
        let today = Date()
        let calendar = Calendar.current
        return products.filter { product in
            let expirationDate = product.expirationDate
            let daysLeft = calendar.dateComponents([.day], from: today, to: expirationDate).day ?? 0
            return daysLeft <= 1 // возвращаем продукты, у которых осталось 3 дня или меньше до истечения срока годности
        }
    }
    
    func getExpiringProducts_5() -> [Product] {
        let today = Date()
        let calendar = Calendar.current
        return products.filter { product in
            let expirationDate = product.expirationDate
            let daysLeft = calendar.dateComponents([.day], from: today, to: expirationDate).day ?? 0
            return daysLeft <= 5 // возвращаем продукты, у которых осталось 3 дня или меньше до истечения срока годности
        }
    }
    
    func clearExpiredProducts() {
        let today = Date()
        products.removeAll { product in
            let expirationDate = product.expirationDate
            return calendar.compare(expirationDate, to: today, toGranularity: .day) == .orderedAscending // удаляем продукты, у которых срок годности уже истек
        }
    }
    
}


class NotificationManager {
    
    let notificationCenter = UNUserNotificationCenter.current()
    
    func requestAuthorization() {
        notificationCenter.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            if granted {
                print("Notification authorization granted")
            } else {
                print("Notification authorization denied")
            }
        }
    }
    
    func scheduleExpirationNotification(for product: Product) {
        let content = UNMutableNotificationContent()
        content.title = "Product expiration warning"
        content.body = "\(product.name) is expiring today"
        content.sound = UNNotificationSound.default
        
        let expirationDate = product.expirationDate
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: expirationDate)
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: false)
        
        let request = UNNotificationRequest(identifier: product.name, content: content, trigger: trigger)
        
        notificationCenter.add(request) { (error) in
            if let error = error {
                print("Error scheduling notification: \(error.localizedDescription)")
            } else {
                print("Notification scheduled for product \(product.name) with expiration date \(product.expirationDate)")
            }
        }
    }
    
    func cancelExpirationNotification(for product: Product) {
        notificationCenter.removePendingNotificationRequests(withIdentifiers: [product.name])
    }
    
}


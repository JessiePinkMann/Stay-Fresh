func dateByAddingDays(_ days: Int, to date: Date) -> Date {
    let calendar = Calendar.current
    return calendar.date(byAdding: .day, value: days, to: date) ?? date
}

func formatDate(_ date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .none
    return dateFormatter.string(from: date)
}

func daysBetweenDates(_ startDate: Date, _ endDate: Date) -> Int {
    let calendar = Calendar.current
    let components = calendar.dateComponents([.day], from: startDate, to: endDate)
    return components.day ?? 0
}

func isDatePassed(_ date: Date) -> Bool {
    let calendar = Calendar.current
    let now = Date()
    if calendar.isDateInToday(date) {
        return false
    }
    return date < now
}

func getExpiringProducts(in days: Int, from products: [Product]) -> [Product] {
    let calendar = Calendar.current
    let now = Date()
    let futureDate = dateByAddingDays(days, to: now)
    var expiringProducts: [Product] = []
    for product in products {
        if let expirationDate = product.expirationDate {
            if calendar.isDate(expirationDate, inSameDayAs: now) || (expirationDate > now && expirationDate <= futureDate) {
                expiringProducts.append(product)
            }
        }
    }
    return expiringProducts
}



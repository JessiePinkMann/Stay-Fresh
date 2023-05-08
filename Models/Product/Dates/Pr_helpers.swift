
let userDefaults = UserDefaults.standard
if let productData = userDefaults.data(forKey: "savedProducts") {
    let products = try? JSONDecoder().decode([Product].self, from: productData)

    let date = dateByAddingDays(7, to: Date())

    let dateString = formatDate(date)

    let days = daysBetweenDates(Date(), date)

    let isPassed = isDatePassed(date)

    let expiringProducts = getExpiringProducts(in: 7, from: products)
}

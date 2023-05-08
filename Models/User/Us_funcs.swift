func getCurrentProfile() -> Profile? {
    let userDefaults = UserDefaults.standard
    if let profileData = userDefaults.data(forKey: "savedProfile") {
        return try? JSONDecoder().decode(Profile.self, from: profileData)
    }
    return nil
}

func saveProfile(_ profile: Profile) {
    let userDefaults = UserDefaults.standard
    let profileData = try? JSONEncoder().encode(profile)
    userDefaults.set(profileData, forKey: "savedProfile")
}

func setUserName(_ name: String, for profile: inout Profile) {
    profile.name = name
}

func setUserLastName(_ lastName: String, for profile: inout Profile) {
    profile.lastName = lastName
}

func setUserEmail(_ email: String, for profile: inout Profile) {
    profile.email = email
}

func getSharedEmails(for profile: Profile) -> [String] {
    return profile.sharedEmails
}

func addSharedEmail(_ email: String, to profile: inout Profile) {
    if !profile.sharedEmails.contains(email) {
        profile.sharedEmails.append(email)
    }
}

func removeSharedEmail(_ email: String, from profile: inout Profile) {
    if let index = profile.sharedEmails.firstIndex(of: email) {
        profile.sharedEmails.remove(at: index)
    }
}

func setNotificationPeriod(_ period: Int, for profile: inout Profile) {
    profile.notificationPeriod = period
}

func setProfilePhoto(_ image: UIImage, for profile: inout Profile) {
    if let imageData = image.jpegData(compressionQuality: 0.5) {
        profile.photo = imageData
    }
}

func getProfilePhoto(for profile: Profile) -> UIImage? {
    if let imageData = profile.photo {
        return UIImage(data: imageData)
    }
    return nil
}

func isNotificationEnabled(for profile: Profile) -> Bool {
    return profile.notificationPeriod != 0
}

func getNotificationPeriod(for profile: Profile) -> Int {
    return profile.notificationPeriod
}

func getProfileInfo(for profile: Profile) -> [String: Any] {
    var info: [String: Any] = [:]
    if let name = profile.name {
        info["name"] = name
    }
    if let lastName = profile.lastName {
        info["lastName"] = lastName
    }
    if let email = profile.email {
        info["email"] = email
    }
    if let photo = profile.photo {
        info["photo"] = photo
    }
    info["notificationPeriod"] = profile.notificationPeriod
    info["sharedEmails"] = profile.sharedEmails
    return info
}

func setProfileInfo(from info: [String: Any], for profile: inout Profile) {
    if let name = info["name"] as? String {
        profile.name = name
    }
    if let lastName = info["lastName"] as? String {
        profile.lastName = lastName
    }
    if let email = info["email"] as? String {
        profile.email = email
    }
    if let photo = info["photo"] as? Data {
        profile.photo = photo
    }
    if let notificationPeriod = info["notificationPeriod"] as? Int {
        profile.notificationPeriod = notificationPeriod
    }
    if let sharedEmails = info["sharedEmails"] as? [String] {
        profile.sharedEmails = sharedEmails
    }
}

func deleteProfile() {
    let userDefaults = UserDefaults.standard
    userDefaults.removeObject(forKey: "savedProfile")
    userDefaults.synchronize()
}

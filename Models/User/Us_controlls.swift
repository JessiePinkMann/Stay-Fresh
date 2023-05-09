
func setUserPassword(_ password: String, _ confirmPassword: String, for profile: inout Profile) -> Bool {
guard password == confirmPassword else {
    return false
    
}
profile.password = password
    return true
    
}


func setProfilePhoto(_ photoData: Data, for profile: inout Profile) {
    profile.photo = photoData
             }

func getProfilePhoto(for profile: Profile) -> UIImage? {
    guard let photoData = profile.photo else {
        return nil
                 }
    return UIImage(data: photoData)
    
}

             func deleteProfilePhoto(for profile: inout Profile) {
    profile.photo = nil
}

// Получаем текущий профиль пользователя
var profile = getCurrentProfile() ?? Profile()

setUserName("Marvin McKinney", for: &profile)
setUserEmail("reg@ex.ru", for: &profile)
setUserPassword(123456789, for: &profile)

setUserName("Kate Zheliba", for: &profile)
setUserEmail("reg@ex.ru", for: &profile)
setUserPassword(123456789, for: &profile)

setUserName("Tatiana Zheliba", for: &profile)
setUserEmail("reg@ex.ru", for: &profile)
setUserPassword(123456789, for: &profile)

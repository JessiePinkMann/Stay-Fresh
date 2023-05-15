
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



setUserName("Kate Zheliba", for: &profile_2)
setUserEmail("reg@ex.ru", for: &profile_2)
setUserPassword(123456789, for: &profile_2)

setUserName("Tatiana Zheliba", for: &profile_3)
setUserEmail("reg@ex.ru", for: &profile_3)
setUserPassword(123456789, for: &profile_3)

set CurrencyFormatStyleConfiguration(&profile){
    local = getCurrentProfile()
    readLine(strippingNewline: true)
    Set(active) = profile;
}

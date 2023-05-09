

import SwiftUI

func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = (scene as? UIWindowScene) else { return }
    
    let window = UIWindow(windowScene: windowScene)
    
    
    let loginViewController = LoginViewController()
    let signUpViewController = SignUpViewController()
    
    
    let navigationController = UINavigationController()
    navigationController.viewControllers = [loginViewController, signUpViewController]
    
    window.rootViewController = navigationController
    self.window = window
    window.makeKeyAndVisible
    
    @main
    struct Stay_FreshApp: App {
        var body: some Scene {
            WindowGroup {
                ContentView()
            }
        }
    }
    
    // Log
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 390, height: 844)
    view.backgroundColor = .white
    
    view.layer.backgroundColor = UIColor(red: 0.922, green: 0.948, blue: 0.958, alpha: 1).cgColor
    
    // Reg
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 390, height: 844)
    view.backgroundColor = .white
    
    view.layer.backgroundColor = UIColor(red: 0.922, green: 0.948, blue: 0.958, alpha: 1).cgColor
    
    // Refregerator false
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 390, height: 844)
    view.backgroundColor = .white

    view.layer.backgroundColor = UIColor(red: 0.922, green: 0.948, blue: 0.958, alpha: 1).cgColor
    
    // fridge 1
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    view.backgroundColor = .white

    let image0 = UIImage(named: "fridge.png")?.cgImage
    let layer0 = CALayer()
    layer0.contents = image0
    layer0.bounds = view.bounds
    layer0.position = view.center
    view.layer.addSublayer(layer0)

    let layer1 = CALayer()
    layer1.backgroundColor = UIColor(red: 0.114, green: 0.561, blue: 0.741, alpha: 1).cgColor
    layer1.compositingFilter = "hueBlendMode"
    layer1.bounds = view.bounds
    layer1.position = view.center
    view.layer.addSublayer(layer1)


    var parent = self.view!
    parent.addSubview(view)
    view.translatesAutoresizingMaskIntoConstraints = false
    view.widthAnchor.constraint(equalToConstant: 100).isActive = true
    view.heightAnchor.constraint(equalToConstant: 100).isActive = true
    view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 145).isActive = true
    view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 139).isActive = true
    
    // Alerts (iPhone)
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 390, height: 844)
    view.backgroundColor = .white
    
    // Setting/family add
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 390, height: 844)
    view.backgroundColor = .white
    
    // Splash
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 390, height: 84)
    view.backgroundColor = .white
    
    view.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
    view.layer.backgroundColor = UIColor(red: 0.922, green: 0.948, blue: 0.958, alpha: 1).cgColor
    
    // TopNavigation
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 390, height: 91)
    view.backgroundColor = .white

    view.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.6).cgColor

    var parent = self.view!
    parent.addSubview(view)
    view.translatesAutoresizingMaskIntoConstraints = false
    view.widthAnchor.constraint(equalToConstant: 390).isActive = true
    view.heightAnchor.constraint(equalToConstant: 91).isActive = true
    view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 0).isActive = true
    view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 0).isActive = true
    
    // Login 1 true
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 30, height: 84)
    view.backgroundColor = .white
    
    view.layer.backgroundColor = UIColor(red: 0.922, green: 0.948, blue: 0.958, alpha: 1).cgColor
    
    // Login 0 false
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 390, height: 844)
    view.backgroundColor = .white
    
    view.layer.backgroundColor = UIColor(red: 0.92, green: 0.948, blue: 0.958, alpha: 1).cgColor
    
    // Success
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 30, height: 844)
    view.backgroundColor = .white
    
    // Add/Scan/Write
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 390, height: 844)
    view.backgroundColor = .white
    
    view.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
    view.layer.backgroundColor = UIColor(red: 0.922, green: 0.948, blue: 0.958, alpha: 1).cgColor
    
    /* SegmentedPicker

    Struct Picker
    */
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 343, height: 32)
    view.backgroundColor = .white

    view.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.05).cgColor
    view.layer.cornerRadius = 8

    var parent = self.view!
    parent.addSubview(view)
    view.translatesAutoresizingMaskIntoConstraints = false
    view.widthAnchor.constraint(equalToConstant: 343).isActive = true
    view.heightAnchor.constraint(equalToConstant: 32).isActive = true
    view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 24).isActive = true
    view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 107).isActive = true
    
    // Add food 1
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 390, height: 844)
    view.backgroundColor = .white
    
    view.layer.backgroundColor = UIColor(red: 0.922, green: 0.948, blue: 0.958, alpha: 1).cgColor
    
    // Recipe false
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 390, height: 844)
    view.backgroundColor = .white
    
    view.layer.backgroundColor = UIColor(red: 0.922, green: 0.948, blue: 0.958, alpha: 1).cgColor
    
    // DetailedTableView
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 358, height: 1014)
    view.backgroundColor = .white


    var parent = self.view!
    parent.addSubview(view)
    view.translatesAutoresizingMaskIntoConstraints = false
    view.widthAnchor.constraint(equalToConstant: 358).isActive = true
    view.heightAnchor.constraint(equalToConstant: 1014).isActive = true
    view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
    view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 126).isActive = true
    
    //Home Indicator (iPhone)
    var view = UILabel()
    view.frame = CGRect(x: 0, y: 0, width: 390, height: 34)
    view.backgroundColor = .white


    var parent = self.view!
    parent.addSubview(view)
    view.translatesAutoresizingMaskIntoConstraints = false
    view.widthAnchor.constraint(equalToConstant: 390).isActive = true
    view.heightAnchor.constraint(equalToConstant: 34).isActive = true
    view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 0).isActive = true
    view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 809).isActive = true

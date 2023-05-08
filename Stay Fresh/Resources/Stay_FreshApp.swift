

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

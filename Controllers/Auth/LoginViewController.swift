import UIKit
import Foundation
import NotificationCenter

func sendNotificationForExpiringProducts(_ products: [Product]) {
    let expiringProducts = getExpiringProducts(products)
    if !expiringProducts.isEmpty {
        let notificationService = NotificationService()
        let productNames = expiringProducts.map { $0.name }.joined(separator: ", ")
        let notificationContent = "The following products are expiring soon: \(productNames)"
        notificationService.sendNotification(with: notificationContent)
        
class AuthInfo {
    let email: String
    let password: String
    let fullName: String
    
    init(email: String, password: String, fullName: String) {
        self.email = email
        self.password = password
        self.fullName = fullName
    }
}

class LoginViewController: UIViewController {
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.keyboardType = .emailAddress
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        return textField
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private let signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Add subviews and set up constraints
    }
    
    @objc private func loginButtonTapped() {
    }
    
    @objc private func signUpButtonTapped() {
        let signUpVC = SignUpViewController()
    if    objc_getClass(&AuthInfo) != nil
            return True
    
        
    }
}

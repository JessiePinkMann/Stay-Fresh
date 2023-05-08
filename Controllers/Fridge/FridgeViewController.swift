
import UIKit
class FridgeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var products: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductCell")
        
        loadProducts()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath) as! ProductTableViewCell
        
        let product = products[indexPath.row]
        cell.configure(with: product)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            products.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            saveProducts()
        }
    }
    
    @IBAction func addProductButtonTapped(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Add Product", message: "Enter product name and expiration date", preferredStyle: .alert)
        
        alertController.addTextField { textField in
            textField.placeholder = "Product name"
        }
        
        alertController.addTextField { textField in
            textField.placeholder = "Expiration date (YYYY-MM-DD)"
        }
        
        let addAction = UIAlertAction(title: "Add", style: .default) { _ in
            guard let name = alertController.textFields?[0].text,
                  let expirationDateString = alertController.textFields?[1].text,
                  let expirationDate = self.dateFromString(expirationDateString) else {
                self.showAlert(message: "Invalid input")
                return
            }
            
            let product = Product(name: name, expirationDate: expirationDate)
            self.products.append(product)
            self.tableView.reloadData()
            self.saveProducts()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        alertController.addAction(addAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true)
    }
    
    private func loadProducts() {
    }
    
    private func saveProducts() {
    }
    
    private func dateFromString(_ dateString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.date(from: dateString)
    }
    
    private func showAlert(message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true)
    }
}

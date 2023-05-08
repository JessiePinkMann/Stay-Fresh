import UIKit

class ProductTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var expirationDateLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(with product: Product) {
        nameLabel.text = product.name
        expirationDateLabel.text = stringFromDate(product.expirationDate)
        
        
    }
    
    func configure(with product: Product) {
        nameLabel.text = product.name
        expirationDateLabel.text = stringFromDate(product.expirationDate)
        
        if let imageUrl = product.imageUrl, let url = URL(string: imageUrl) {
            loadImage(from: url)
        }
    }

    private func loadImage(from url: URL) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let imageData = data, error == nil {
                DispatchQueue.main.async {
                    self.productImageView.image = UIImage(data: imageData)
                }
            } else {
                print("Error: \(error?.localizedDescription ?? "Неизвестная ошибка")")
            }
        }.resume()
    }

    
    private func stringFromDate(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: date)
    }
}


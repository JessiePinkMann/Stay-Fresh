import UIKit

class RecipeTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var favoriteButton: UIButton!
    
    private var isFavorite = false

    func configure(recipe: Recipe, isFavorite: Bool) {
        self.isFavorite = isFavorite
        nameLabel.text = recipe.name
        ingredientsLabel.text = ingredientsToString(ingredients: recipe.ingredients)
        thumbnailImageView.image = UIImage(named: recipe.thumbnailImageName)
        updateFavoriteButton()
    }
    
    @IBAction func favoriteButtonTapped(_ sender: UIButton) {
        isFavorite.toggle()
        updateFavoriteButton()
        
        // TODO: Save favorite status to local storage or trigger delegate method to handle it in the view controller
    }
    
    private func ingredientsToString(ingredients: [Ingredient]) -> String {
        return ingredients.map { ingredient in
            return "\(ingredient.amount) \(ingredient.unit) \(ingredient.name)"
        }.joined(separator: ", ")
    }
    
    private func updateFavoriteButton() {
        let imageName = isFavorite ? "heart.fill" : "heart"
        let image = UIImage(systemName: imageName)
        favoriteButton.setImage(image, for: .normal)
    }
}

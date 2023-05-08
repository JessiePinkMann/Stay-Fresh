import UIKit

protocol AddRecipeViewControllerDelegate: AnyObject {
    func recipeWasAdded(_ recipe: Recipe)
}

class AddRecipeViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ingredientsTextView: UITextView!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    weak var delegate: AddRecipeViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addRecipeButtonTapped(_ sender: UIButton) {
        guard let name = nameTextField.text, !name.isEmpty,
              let ingredientsText = ingredientsTextView.text, !ingredientsText.isEmpty else {
            showAlert(message: "Please enter recipe name and ingredients")
            return
        }
        
        let ingredients = parseIngredients(from: ingredientsText)
        let thumbnailImageName = "default_recipe_image" // Set a default image, or allow the user to choose one.
        
        let recipe = Recipe(name: name, ingredients: ingredients, thumbnailImageName: thumbnailImageName)
        delegate?.recipeWasAdded(recipe)
        
        navigationController?.popViewController(animated: true)
    }
    
    private func parseIngredients(from text: String) -> [Ingredient] {
        let lines = text.split(separator: "\n")
        return lines.compactMap { line in
            let components = line.split(separator: " ", maxSplits: 2)
            guard components.count == 3,
                  let amount = Int(components[0]),
                  let unit = components[1].trimmingCharacters(in: .whitespaces),
                  let name = components[2].trimmingCharacters(in: .whitespaces) else {
                return nil
            }
            return Ingredient(name: name, amount: amount, unit: unit)
        }
    }

    private func showAlert(message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true)
    }
}

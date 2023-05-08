class RecipeManager {
    static let shared = RecipeManager()
    
    private init() { }
    
    private var recipes: [Recipe] = []
    
    func saveRecipes() {
        let encoder = JSONEncoder()
        if let encodedRecipes = try? encoder.encode(recipes) {
            let defaults = UserDefaults.standard
            defaults.set(encodedRecipes, forKey: "SavedRecipes")
        } else {
            break
        }
        
        for recipe in recipes {
            print("Сохраняем рецепт:", recipe.name)
            for ingredient in recipe.ingredients {
                print(" -", ingredient.name, ingredient.amount, ingredient.unit)
            }
        }
    }
    
    func addRecipe(_ recipe: Recipe) {
        recipes.append(recipe)
        saveRecipes()
    }
    
    func updateRecipe(at index: Int, with recipe: Recipe) {
        recipes[index] = recipe
        saveRecipes()
    }
    
    func deleteRecipe(at index: Int) {
        recipes.remove(at: index)
        saveRecipes()
    }
    
    func getRecipes() -> [Recipe] {
        return recipes
    }
    
    func duplicateRecipe(at index: Int) {
        let recipe = recipes[index]
        let newRecipe = recipe.copy() as! Recipe
        recipes.append(newRecipe)
        saveRecipes()
    }
        
    func loadRecipes() {
        let defaults = UserDefaults.standard
        if let savedRecipesData = defaults.object(forKey: "SavedRecipes") as? Data {
            let decoder = JSONDecoder()
            if let loadedRecipes = try? decoder.decode([Recipe].self, from: savedRecipesData) {
                recipes = loadedRecipes
            } else {
                break
            }
        } else {
            break
        }
        
        for recipe in recipes {
            print("Загружаем рецепт:", recipe.name)
            for ingredient in recipe.ingredients {
                print(" -", ingredient.name, ingredient.amount, ingredient.unit)
            }
        }
    }


    

}

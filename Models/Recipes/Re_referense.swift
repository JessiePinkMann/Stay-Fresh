// Функция для фильтрации рецептов по ингредиентам
func filterRecipesByIngredient(recipes: [Recipe], ingredientName: String) -> [Recipe] {
    return recipes.filter { recipe in
        recipe.ingredients.contains { ingredient in
            ingredient.name.lowercased() == ingredientName.lowercased()
        }
    }
}

// Функция для сортировки рецептов по количеству ингредиентов
func sortRecipesByIngredientCount(recipes: [Recipe], ascending: Bool = true) -> [Recipe] {
    return recipes.sorted { (recipe1, recipe2) -> Bool in
        if ascending {
            return recipe1.ingredients.count < recipe2.ingredients.count
        } else {
            return recipe1.ingredients.count > recipe2.ingredients.count
        }
    }
}

// Функция для подсчета общего количества ингредиентов во всех рецептах
func totalIngredientCount(recipes: [Recipe]) -> Int {
    return recipes.reduce(0) { (result, recipe) -> Int in
        return result + recipe.ingredients.count
    }
}

// Функция для подсчета общего количества определенного ингредиента во всех рецептах
func countIngredientInRecipes(recipes: [Recipe], ingredientName: String) -> Int {
    return recipes.reduce(0) { (result, recipe) -> Int in
        return result + recipe.ingredients.filter { ingredient in
            ingredient.name.lowercased() == ingredientName.lowercased()
        }.count
    }
}

// Функция для конвертации списка ингредиентов в строку, пригодную для отображения
func ingredientsToString(ingredients: [Ingredient]) -> String {
    return ingredients.map { ingredient in
        return "\(ingredient.amount) \(ingredient.unit) \(ingredient.name)"
    }.joined(separator: ", ")
}

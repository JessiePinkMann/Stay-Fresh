func createSampleRecipes() {
    let borsh = Recipe(name: "Борщ со свеклой",
                       ingredients: [
                        Ingredient(name: "Картофель", amount: 400, unit: "г"),
                        Ingredient(name: "Говядина", amount: 300, unit: "г"),
                        Ingredient(name: "Зелень", amount: 100, unit: "г")
                       ])
    
    let vegetableSalad = Recipe(name: "Салат овощной",
                                ingredients: [
                                 Ingredient(name: "Помидоры", amount: 450, unit: "г"),
                                 Ingredient(name: "Морковь", amount: 500, unit: "г"),
                                 Ingredient(name: "Брокколи", amount: 450, unit: "г")
                                ])
    
    let margaritaPizza = Recipe(name: "Пицца маргаритта",
                                ingredients: [
                                 Ingredient(name: "Пшеничная мука", amount: 200, unit: "г"),
                                 Ingredient(name: "Вода", amount: 120, unit: "г"),
                                 Ingredient(name: "Пармезан", amount: 325, unit: "г")
                                ])
    
    let carbonaraPasta = Recipe(name: "Паста карбонара",
                                ingredients: [
                                 Ingredient(name: "Лапша", amount: 400, unit: "г"),
                                 Ingredient(name: "Бекон", amount: 300, unit: "г"),
                                 Ingredient(name: "Пармезан", amount: 100, unit: "г")
                                ])
    
    let hummus = Recipe(name: "Хумус из нута",
                        ingredients: [
                         Ingredient(name: "Лапша", amount: 400, unit: "г"),
                         Ingredient(name: "Бекон", amount: 300, unit: "г"),
                         Ingredient(name: "Пармезан", amount: 100, unit: "г")
                        ])
    
    let pancakes = Recipe(name: "Блины",
                          ingredients: [
                           Ingredient(name: "Мука", amount: 300, unit: "г"),
                           Ingredient(name: "Молоко", amount: 500, unit: "мл"),
                           Ingredient(name: "Яйца", amount: 2, unit: "шт")
                          ])

    let frenchToast = Recipe(name: "Гренки",
                             ingredients: [
                              Ingredient(name: "Хлеб", amount: 4, unit: "ломтика"),
                              Ingredient(name: "Яйца", amount: 2, unit: "шт"),
                              Ingredient(name: "Молоко", amount: 120, unit: "мл")
                             ])

    let tomatoSoup = Recipe(name: "Томатный суп",
                            ingredients: [
                             Ingredient(name: "Томаты", amount: 500, unit: "г"),
                             Ingredient(name: "Лук", amount: 1, unit: "шт"),
                             Ingredient(name: "Чеснок", amount: 2, unit: "зубчика")
                            ])

    let friedRice = Recipe(name: "Жареный рис",
                           ingredients: [
                            Ingredient(name: "Рис", amount: 200, unit: "г"),
                            Ingredient(name: "Яйца", amount: 2, unit: "шт"),
                            Ingredient(name: "Горошек", amount: 100, unit: "г")
                           ])

    let spaghettiBolognese = Recipe(name: "Спагетти Болоньезе",
                                    ingredients: [
                                     Ingredient(name: "Спагетти", amount: 400, unit: "г"),
                                     Ingredient(name: "Фарш", amount: 300, unit: "г"),
                                     Ingredient(name: "Томатный соус", amount: 200, unit: "мл")
                                    ])

    let chickenSalad = Recipe(name: "Салат с курицей",
                              ingredients: [
                               Ingredient(name: "Куриное филе", amount: 300, unit: "г"),
                               Ingredient(name: "Салат", amount: 100, unit: "г"),
                               Ingredient(name: "Помидоры", amount: 200, unit: "г")
                              ])

    let sushiRolls = Recipe(name: "Суши-роллы",
                            ingredients: [
                             Ingredient(name: "Рис для суши", amount: 200, unit: "г"),
                             Ingredient(name: "Нори", amount: 4, unit: "листа"),
                             Ingredient(name: "Авокадо", amount: 1, unit: "шт")
                            ])

    let chocolateCake = Recipe(name: "Шоколадный торт",
                               ingredients: [
                                Ingredient(name: "Мука", amount: 200, unit: "г"),
                                Ingredient(name: "Какао-порошок", amount: 50, unit: "г"),
                                Ingredient(name: "Сахар", amount: 150, unit: "г")
                               ])
    
    let mushroomRisotto = Recipe(name: "Ризотто с грибами",
                                 ingredients: [
                                  Ingredient(name: "Рис арборио", amount: 300, unit: "г"),
                                  Ingredient(name: "Шампиньоны", amount: 200, unit: "г"),
                                  Ingredient(name: "Лук", amount: 1, unit: "шт")
                                 ])

    let vegetableStirFry = Recipe(name: "Овощное рагу",
                                  ingredients: [
                                   Ingredient(name: "Цуккини", amount: 200, unit: "г"),
                                   Ingredient(name: "Брокколи", amount: 200, unit: "г"),
                                   Ingredient(name: "Морковь", amount: 100, unit: "г")
                                  ])

    let potatoSalad = Recipe(name: "Салат из картофеля",
                             ingredients: [
                              Ingredient(name: "Картофель", amount: 500, unit: "г"),
                              Ingredient(name: "Майонез", amount: 100, unit: "г"),
                              Ingredient(name: "Зелень", amount: 50, unit: "г")
                             ])

    let beefStroganoff = Recipe(name: "Бефстроганов",
                                ingredients: [
                                 Ingredient(name: "Говядина", amount: 400, unit: "г"),
                                 Ingredient(name: "Лук", amount: 2, unit: "шт"),
                                 Ingredient(name: "Сметана", amount: 200, unit: "г")
                                ])

    let fishTacos = Recipe(name: "Тако с рыбой",
                           ingredients: [
                            Ingredient(name: "Рыба", amount: 300, unit: "г"),
                            Ingredient(name: "Тортильи", amount: 6, unit: "шт"),
                            Ingredient(name: "Авокадо", amount: 1, unit: "шт")
                           ])

    
    addRecipe(borsh)
    addRecipe(vegetableSalad)
    addRecipe(margaritaPizza)
    addRecipe(carbonaraPasta)
    addRecipe(hummus)
}

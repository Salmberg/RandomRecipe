//
//  RandomRecipeViewController.swift
//  RandomRecipe
//
//  Created by David Salmberg on 2023-03-16.
//

import UIKit

class RandomRecipeViewController: UIViewController {

    @IBOutlet weak var recipeNameLbl: UILabel!
    @IBOutlet weak var recipeIngredientsLbl: UILabel!
    @IBOutlet weak var recipeInstructionLbl: UILabel!
    
    var recipes: [Recipe]?
    
    var currentIndex = 0

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getRecipe()
        
        getRandomRecipe()
        
        if let recipes = recipes, !recipes.isEmpty {
            let randomIndex = Int.random(in: 0..<recipes.count)
            let randomRecipe = recipes[randomIndex]
            recipeNameLbl.text = randomRecipe.name
            recipeIngredientsLbl.text = randomRecipe.ingredients
            recipeInstructionLbl.text = randomRecipe.instruction
        } else {
            recipeNameLbl.text = "No recipes available."
        }
        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func getNewRecipeBtn(_ sender: Any) {
        getRandomRecipe()
    }
    
    @IBAction func addRecipeBtn(_ sender: Any) {
    }
    
    func getRandomRecipe() {
        if let recipes = recipes, !recipes.isEmpty {
            let randomIndex = Int.random(in: 0..<recipes.count)
            let randomRecipe = recipes[randomIndex]
            recipeNameLbl.text = randomRecipe.name
            recipeIngredientsLbl.text = randomRecipe.ingredients
            recipeInstructionLbl.text = randomRecipe.instruction
        } else {
            recipeNameLbl.text = "No recipes available."
        }
    }
    
    func getRecipe(){
        let recipe1 = Recipe(name: "Beef Stew", instruction: "Cut beef into bite-size pieces and coat with flour. Heat olive oil in a large pot and brown beef. Add chopped onion, carrot, celery, and garlic and cook until soft. Stir in tomato paste and thyme. Pour in beef broth and bring to a boil. Add diced potatoes and simmer for 1-2 hours until beef and potatoes are tender. Season with salt and pepper.", ingredients: "Stewing beef, onion, carrot, celery, potatoes, beef broth, tomato paste, garlic, thyme, salt, pepper, flour, olive oil")

        let recipe2 = Recipe(name: "Chicken Fajitas", instruction: "Cut chicken breast into strips. Season with chili powder, cumin, smoked paprika, salt, and pepper. Heat vegetable oil in a pan and sauté chicken until cooked through. Remove chicken and set aside. Add sliced bell pepper and onion to the same pan and sauté until soft. Serve chicken and vegetables on warm tortillas with sour cream and salsa.", ingredients: "Chicken breast, bell pepper, onion, garlic, chili powder, cumin, smoked paprika, salt, pepper, vegetable oil, tortillas, sour cream, salsa")

        let recipe3 = Recipe(name: "Grilled Cheese Sandwich", instruction: "Preheat a non-stick pan over medium heat. Butter two slices of bread. Place a slice of cheddar cheese on one slice of bread and top with the other slice of bread. Grill sandwich for 2-3 minutes on each side until golden brown and cheese is melted.", ingredients: "Bread, cheddar cheese, butter")

        let recipe4 = Recipe(name: "Caesar Salad", instruction: "Chop romaine lettuce and place in a large bowl. Add croutons and grated parmesan cheese. In a blender, combine anchovy fillets, garlic, lemon juice, dijon mustard, Worcestershire sauce, salt, and pepper. Blend until smooth. Slowly pour in olive oil while blending. Toss salad with dressing and serve.", ingredients: "Romaine lettuce, croutons, parmesan cheese, anchovy fillets, garlic, lemon juice, dijon mustard, Worcestershire sauce, olive oil, salt, pepper")

        let recipe5 = Recipe(name: "Spaghetti and Meatballs", instruction: "Cook spaghetti according to package directions. In a bowl, mix ground beef, bread crumbs, grated parmesan cheese, garlic, parsley, egg, salt, and pepper. Form into balls and fry in olive oil until browned on all sides. In a saucepan, heat canned tomatoes, garlic, onion, basil, and oregano. Simmer for 10-15 minutes. Serve meatballs and sauce over spaghetti.", ingredients: "Spaghetti, ground beef, bread crumbs, parmesan cheese, garlic, parsley, egg, salt, pepper, olive oil, canned tomatoes, onion, basil, oregano")

        let recipe6 = Recipe(name: "Chocolate Chip Cookies", instruction: "Preheat oven to 375°F. In a bowl, cream together butter, white sugar, and brown sugar. Beat in eggs and vanilla. In another bowl, combine flour, baking soda, and salt. Gradually stir flour mixture into butter mixture. Stir in chocolate chips. Drop by rounded tablespoon onto ungreased cookie sheet. Bake for 8-10 minutes. Cool on wire rack.", ingredients: "Butter, white sugar, brown sugar, eggs, vanilla, flour, baking soda, salt, chocolate chips")

      
        recipes = [recipe1,recipe2,recipe3,recipe4,recipe5,recipe6]
    }
}

//
//  AddRecipeViewController.swift
//  RandomRecipe
//
//  Created by David Salmberg on 2023-03-16.
//

import UIKit

class AddRecipeViewController: UIViewController {

    @IBOutlet weak var dishNameText: UITextField!
    @IBOutlet weak var ingredientsText: UITextField!
    @IBOutlet weak var instructionsText: UITextField!

    var recipes: [Recipe]?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addRecipeBtn(_ sender: Any) {
        guard let name = dishNameText.text, !name.isEmpty,
              let ingredients = ingredientsText.text, !ingredients.isEmpty,
              let instruction = instructionsText.text, !instruction.isEmpty else {
            return
        }
        let newRecipe = Recipe(name: name, instruction: instruction, ingredients: ingredients)
        recipes?.append(newRecipe)
        navigationController?.popViewController(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "addRecipeSegue" {
               if let destinationVC = segue.destination as? RandomRecipeViewController {
                   destinationVC.recipes = recipes
               }
           }
       }
}

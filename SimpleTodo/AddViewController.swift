//
//  AddViewController.swift
//  SimpleTodo
//
//  Created by Haruko Okada on 1/23/21.
//

import UIKit

class AddViewController: UIViewController {
    
    let saveData = UserDefaults.standard
    var todoArray = [String]()
    
    @IBOutlet weak var todoTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButton(_ sender: Any) {
        todoArray.append(todoTextField.text!)
        saveData.set(todoArray, forKey: "todo")
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

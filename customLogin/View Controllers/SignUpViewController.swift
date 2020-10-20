//
//  SignUpViewController.swift
//  customLogin
//
//  Created by Gayal Kuruppu on 10/20/20.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet var firstNameTextField: UITextField!
    
    @IBOutlet var lastNameTextField: UITextField!
    
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var signUpButton: UIButton!
    
    @IBOutlet var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func signUpTapped(_ sender: Any) {
    }
    

}

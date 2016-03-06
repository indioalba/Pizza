//
//  QuesoViewController.swift
//  Pizza
//
//  Created by Manuel Reyes on 6/3/16.
//  Copyright © 2016 Manuel Reyes. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController {

    
    @IBOutlet weak var btMozarela: UIButton!
    @IBOutlet weak var btCheddar: UIButton!
    @IBOutlet weak var btParmesano: UIButton!
    @IBOutlet weak var btSinQueso: UIButton!
    
    @IBOutlet weak var especificacionesQuesoView: UILabel!
    
    var size:String = ""
    var masa:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        especificacionesQuesoView.text = size+" > "+masa+" > "
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let ingredientesViewController = segue.destinationViewController as! IngredientesViewController
        let queso = selectionQueso(sender as! UIButton)
        ingredientesViewController.size = size;
        ingredientesViewController.masa = masa;
        ingredientesViewController.queso = queso;
        
    }
    
    func selectionQueso(sender:UIButton)->String{
        var queso:String = ""
        switch sender{
        case btMozarela:
            queso = "Mozarela"
            break
        case btCheddar:
            queso = "Cheddar"
            break
        case btParmesano:
            queso = "Parmesano"
            break
        case btSinQueso:
            queso = "Sin queso"
            break
        default:
            queso = ""
        }
        
        return queso;
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

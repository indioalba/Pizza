//
//  ConfirmationViewController.swift
//  Pizza
//
//  Created by Manuel Reyes on 6/3/16.
//  Copyright © 2016 Manuel Reyes. All rights reserved.
//

import UIKit

class ConfirmationViewController: UIViewController {

    var size:String = ""
    var masa:String = ""
    var queso:String = ""
    var ingredientes:String = "y con "
    
    @IBOutlet weak var txSize: UILabel!
    @IBOutlet weak var txMasa: UILabel!
    @IBOutlet weak var txQueso: UILabel!
    @IBOutlet weak var txIngredientes: UILabel!
    
    var isJamon:BooleanType = false
    var isPepperoni:BooleanType = false
    var isPavo:BooleanType = false
    var isSalchicha:BooleanType = false
    var isAceituna:BooleanType = false
    var isCebolla:BooleanType = false
    var isPimiento:BooleanType = false
    var isPina:BooleanType = false
    var isAnchoa:BooleanType = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        txSize.text = size
        txMasa.text = masa
        txQueso.text = queso
        txIngredientes.text = ingredientes
    }
    

    @IBAction func onCancel(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
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

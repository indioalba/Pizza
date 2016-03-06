//
//  ViewController.swift
//  Pizza
//
//  Created by Manuel Reyes on 6/3/16.
//  Copyright © 2016 Manuel Reyes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btChica: UIButton!
    @IBOutlet weak var btMediana: UIButton!
    @IBOutlet weak var btGrande: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Cambio a la vista MasaViewController
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // recogemos la vista MasaViewController
        let masaVista = segue.destinationViewController as! MasaViewController
        // llamamos a selectionSize para saber que boton se pulso y nos devuelve el valor correspondiente
        masaVista.size = selectionSize(sender as! UIButton)
        
        print("prepareForSegue: "+masaVista.size)
    }
    
    // Comprueba el boton que ha sido pulsado y asigna el valor correspondiente a "size"
    func selectionSize(sender: UIButton)->String{
        var size:String = ""
        switch sender{
        case btChica:
            size = "Chica"
        case btMediana:
            size = "Mediana"
        case btGrande:
            size = "Grande"
        default:
            size = ""
        }
        return size
    }
    
}


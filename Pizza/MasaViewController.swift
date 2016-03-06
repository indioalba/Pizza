//
//  MasaViewController.swift
//  Pizza
//
//  Created by Manuel Reyes on 6/3/16.
//  Copyright © 2016 Manuel Reyes. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController {

    @IBOutlet weak var btDelgada: UIButton!
    @IBOutlet weak var btCrujiente: UIButton!
    @IBOutlet weak var btGruesa: UIButton!
    
    var size:String = ""

    
    @IBOutlet weak var especificacionesMasaView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        especificacionesMasaView.text = size+" > ";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let quesoViewController = segue.destinationViewController as! QuesoViewController
        let masa = selectionMasa(sender as! UIButton)
        quesoViewController.size = size;
        quesoViewController.masa = masa;
        
    }
    
    func selectionMasa(sender:UIButton)->String{
        var masa:String = ""
        switch sender{
        case btDelgada:
            masa = "Delgada"
        case btCrujiente:
            masa = "Crujiente"
        case btGruesa:
            masa = "Gruesa"
        default:
            masa = ""
        }
        
        return masa;
    }
    
    
    // Comprueba el boton que ha sido pulsado y asigna el valor correspondiente a "size"
/*    func selectionSize(sender: UIButton)->String{
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
*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

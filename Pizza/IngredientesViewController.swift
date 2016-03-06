//
//  IngredientesViewController.swift
//  Pizza
//
//  Created by Manuel Reyes on 6/3/16.
//  Copyright © 2016 Manuel Reyes. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {

    @IBOutlet weak var btJamon: UIButton!
    @IBOutlet weak var btPepperoni: UIButton!
    
    @IBOutlet weak var btAnchoa: UIButton!
    @IBOutlet weak var btPina: UIButton!
    @IBOutlet weak var btPimiento: UIButton!
    @IBOutlet weak var btCebolla: UIButton!
    @IBOutlet weak var btAceituna: UIButton!
    @IBOutlet weak var btSalchicha: UIButton!
    @IBOutlet weak var btPavo: UIButton!
    @IBOutlet weak var especificacionesIngredientesView: UILabel!
    
    var size:String = ""
    var masa:String = ""
    var queso:String = ""
    var ingredientes:String = ""
    
    var isJamon:BooleanType = false
    var isPepperoni:BooleanType = false
    var isPavo:BooleanType = false
    var isSalchicha:BooleanType = false
    var isAceituna:BooleanType = false
    var isCebolla:BooleanType = false
    var isPimiento:BooleanType = false
    var isPina:BooleanType = false
    var isAnchoa:BooleanType = false
    
    var ingredientesDic = ["Jamon": false, "Pepperoni": false]
    
    // to know if we need to change the background color
    var isActive:BooleanType = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        especificacionesIngredientesView.text = size+">"+masa+">"+queso
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let confirmationViewController = segue.destinationViewController as! ConfirmationViewController
        confirmationViewController.size = size
        confirmationViewController.masa = masa
        confirmationViewController.queso = queso
        ingredientes = ""
        
        if(isJamon){
            ingredientes += "Jamon "
        }
        if(isPepperoni){
            ingredientes += "Pepperoni "
        }
        if(isPavo){
            ingredientes += "Pavo "
        }
        if(isSalchicha){
            ingredientes += "Salchicha "
        }
        if(isAceituna){
            ingredientes += "Aceituna "
        }
        if(isCebolla){
            ingredientes += "Cebolla "
        }
        if(isPimiento){
            ingredientes += "Pimiento "
        }
        if(isPina){
            ingredientes += "Pina "
        }
        if(isAnchoa){
            ingredientes += "Anchoa "
        }
        
        confirmationViewController.ingredientes += ingredientes;
    }
    
    @IBAction func ingredienteSelected(sender: UIButton) {
        switch sender{
        case btJamon:
             if(isJamon){
                ingredientesDic["Jamon"] = false
                isJamon = false
                isActive = false
             }else{
                ingredientesDic["Jamon"] = true
                isJamon = true
                isActive = true
            }
        case btPepperoni:
            if(isPepperoni){
                ingredientesDic["Pepperoni"] = false
                isPepperoni = false
                isActive = false
            }else{
                ingredientesDic["Pepperoni"] = true
                isPepperoni = true
                isActive = true
            }
        case btPavo:
            if(isPavo){
                isPavo = false
                isActive = false
            }else{
                isPavo = true
                isActive = true
            }
        case btSalchicha:
            if(isSalchicha){
                isSalchicha = false
                isActive = false
            }else{
                isSalchicha = true
                isActive = true
            }
        case btAceituna:
            if(isAceituna){
                isAceituna = false
                isActive = false
            }else{
                isAceituna = true
                isActive = true
            }
        case btJamon:
            if(isJamon){
                isJamon = false
                isActive = false
            }else{
                isJamon = true
                isActive = true
            }
        case btCebolla:
            if(isCebolla){
                isCebolla = false
                isActive = false
            }else{
                isCebolla = true
                isActive = true
            }
        case btPimiento:
            if(isPimiento){
                isPimiento = false
                isActive = false
            }else{
                isPimiento = true
                isActive = true
            }
        case btPina:
            if(isPina){
                isPina = false
                isActive = false
            }else{
                isPina = true
                isActive = true
            }
        case btAnchoa:
            if(isAnchoa){
                isAnchoa = false
                isActive = false
            }else{
                isAnchoa = true
                isActive = true
            }
            
            
        default : break
            
        }
        
        // change the color text and the background color
        if(isActive){
            sender.setTitleColor(UIColor.orangeColor(), forState: UIControlState.Normal )
        }else{
            sender.setTitleColor(UIColor.lightGrayColor(), forState: UIControlState.Normal )
        }
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

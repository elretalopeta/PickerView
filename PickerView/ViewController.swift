//
//  ViewController.swift
//  PickerView
//
//  Created by Daniel Santiago Martinez on 7/10/15.
//  Copyright © 2015 Daniel Santiago Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    @IBOutlet weak var itemLabel: UILabel!
    
    @IBOutlet weak var pickerView1: UIPickerView!
    @IBOutlet weak var pickerView2: UIPickerView!
    
    @IBOutlet weak var view1: UIImageView!
    
    @IBOutlet weak var view2: UIImageView!
    
    var img1=["pikaxu","Agumon","puar","eric","stucom"]
    var img2=["pokemon","digimon","logoDragon","logoHumano","logoStucom"]
    
    var columna1 = ["Pikachu", "Agumoun", "Puar", "Eric Retamero", "Stucom"]
    var columna2 = ["Pokemon", "Digimon", "Dragon Ball", "Humano", "Escuela"]
    
    var row1 = 0;
    var row2 = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemLabel.text = "A jugar"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Métodos para crear y configurar el PickerView
    
    //aqui nos indica cuantas columnas tendra
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //aqui nos indicara cuantas filas tendra
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(pickerView==pickerView1){
            return columna1.count
        }else{
            return columna2.count
        }
        
    }
    
    //aqui mostrara el texto en cada piker
    func pickerView(pickerView: UIPickerView,
        titleForRow row: Int, forComponent component: Int) -> String? {
            if(pickerView==pickerView1){
                return columna1[row]
            }else{
                return columna2[row]
            }
        
    }
    
    //Método para indicar qué hacer cuando un elemento del PickerView ha sido seleccionado
    func pickerView(pickerView: UIPickerView,
        didSelectRow row: Int, inComponent component: Int) {
        
        if(pickerView==pickerView1){
            
            view1.image = UIImage(named:img1[row])
            row1=row;
            
        }else{
            
            view2.image = UIImage(named:img2[row])
            row2=row;
            }
            
            if(row1 != row2){itemLabel.text="No es correcto";}
            if(row1==0 && row2==0){itemLabel.text=columna1[row]+" es un "+columna2[row]}
            if(row1==1 && row2==1){itemLabel.text=columna1[row]+" es un "+columna2[row]}
            
            if(row1==2 && row2==2){itemLabel.text=columna1[row]+" es un "+columna2[row]}
            if(row1==3 && row2==3){itemLabel.text=columna1[row]+" es un "+columna2[row]}
            
            if(row1==4 && row2==4){itemLabel.text=columna1[row]+" es un "+columna2[row]}
            

    }
    
  
}


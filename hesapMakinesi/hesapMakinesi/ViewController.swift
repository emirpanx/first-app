//
//  ViewController.swift
//  hesapMakinesi
//
//  Created by Emir Altınsoy on 20.10.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var ilkText: UITextField!
    @IBOutlet weak var ikinciText: UITextField!
    @IBOutlet weak var sonucLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.ilkText.delegate = self
        self.ikinciText.delegate = self
        ilkText.keyboardType = UIKeyboardType.numberPad
        ikinciText.keyboardType = UIKeyboardType.numberPad
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


    
    @IBAction func toplamaTiklandi(_ sender: Any) {
        
        if let ilksSayi = Int(ilkText.text!) {
            if let ikinciSayi = Int(ikinciText.text!) {
                
                let sonuc = ilksSayi + ikinciSayi
                sonucLabel.text = String(sonuc)
                
            }
        }
            
        
    }
    
    
    @IBAction func cıkarmaTiklandi(_ sender: Any) {
        
        if let ilksSayi = Int(ilkText.text!) {
            if let ikinciSayi = Int(ikinciText.text!) {
                
                let sonuc = ilksSayi - ikinciSayi
                sonucLabel.text = String(sonuc)
                
            }
        }
        
    }
    
    
    @IBAction func carpmaTiklandi(_ sender: Any) {
        if let ilksSayi = Int(ilkText.text!) {
            if let ikinciSayi = Int(ikinciText.text!) {
                
                let sonuc = ilksSayi * ikinciSayi
                sonucLabel.text = String(sonuc)
                
            }
        }
        
        
    }
    
    
    @IBAction func bolmeTiklandi(_ sender: Any) {
        if let ilksSayi = Int(ilkText.text!) {
            if let ikinciSayi = Int(ikinciText.text!) {
                
                let sonuc = ilksSayi / ikinciSayi
                sonucLabel.text = String(sonuc)
                
            }
        }
        
        
    }
    
}














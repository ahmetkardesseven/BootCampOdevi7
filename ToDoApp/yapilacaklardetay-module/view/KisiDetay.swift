//
//  KisiDetay.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import UIKit

class KisiDetay: UIViewController {
    @IBOutlet weak var tfKisiAd: UITextField!
    
    var kisi:Kisiler?
    
    var kisiDetayPresenterNesnesi:ViewToPresenterKisiDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        KisiDetayRouter.createModule(ref: self)

        if let k = kisi {
            tfKisiAd.text = k.kisi_ad
            
        }
    }
    
    @IBAction func buttonGuncelle(_ sender: Any) {
        if let ka = tfKisiAd.text, let k = kisi {
            kisiDetayPresenterNesnesi?.guncelle(kisi_id: k.kisi_id!, kisi_ad: ka)
        }
    }
    

}

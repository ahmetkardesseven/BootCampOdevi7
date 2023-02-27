//
//  KisiDetay.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import UIKit

class YapilacakDetay: UIViewController {
    @IBOutlet weak var tfKisiAd: UITextField!
    
    var kisi:Yapilacaklar?
    
    var YapilacakDetayPresenterNesnesi:ViewToPresenterYapilacakDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        YapilacakDetayRouter.createModule(ref: self)

        if let k = kisi {
            tfKisiAd.text = k.yapilacak_ad
            
        }
    }
    
    @IBAction func buttonGuncelle(_ sender: Any) {
        if let ka = tfKisiAd.text, let k = kisi {
            YapilacakDetayPresenterNesnesi?.guncelle(yapilacak_id: k.yapilacak_id!, yapilacak_ad: ka)
        }
    }
    

}

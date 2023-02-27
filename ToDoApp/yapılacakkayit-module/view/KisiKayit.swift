//
//  KisiKayit.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import UIKit

class YapilacaklariEkle: UIViewController {

    @IBOutlet weak var tfKisiAd: UITextField!
    
    
    var YapilacaklariEklePresenterNesnesi:ViewToPresenterYapilacaklariEkleProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        YapilacaklariEkleRouter.createModule(ref: self)
    }

    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text {
            YapilacaklariEklePresenterNesnesi?.kaydet(yapilacak_ad: ka)
        }
    }

}

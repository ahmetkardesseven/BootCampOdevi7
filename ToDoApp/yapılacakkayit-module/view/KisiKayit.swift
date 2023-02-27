//
//  KisiKayit.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import UIKit

class KisiKayit: UIViewController {

    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    var kisiKayitPresenterNesnesi:ViewToPresenterKisiKayitProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        KisiKayitRouter.createModule(ref: self)
    }

    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text , let kt = tfKisiTel.text {
            kisiKayitPresenterNesnesi?.kaydet(kisi_ad: ka, kisi_tel: kt)
        }
    }

}

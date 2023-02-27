//
//  KisiKayitProtocols.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import Foundation


protocol ViewToPresenterKisiKayitProtocol {
    var kisiKayitInteractor:PresenterToInteractorKisiKayitProtocol? {get set}
    
    func kaydet(kisi_ad:String,kisi_tel:String)
}

protocol PresenterToInteractorKisiKayitProtocol{
    func kaydet(kisi_ad:String,kisi_tel:String)
}

protocol PresenterToRouterKisiKayitProtocol  {
    static func createModule(ref:KisiKayit)
}

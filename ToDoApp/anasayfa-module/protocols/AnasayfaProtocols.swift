//
//  AnasayfaProtocols.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import Foundation

protocol ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor:PresenterToInteractorAnasayfaProtocol? {get set}
    var anasayfaView:PresenterToViewAnasayfaProtocol? {get set}
    
    func kisileriYukle()
    func ara(aramaKelimesi:String)
    func sil(kisi_id:Int)
}

protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter:InteractorToPresenterAnasayfaProtocol? {get set}
    
    func kisileriYukle()
    func ara(aramaKelimesi:String)
    func sil(kisi_id:Int)
}

//Taşıyıcı Protocoller
protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(kisilerListesi:[Kisiler])
}

protocol PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(kisilerListesi:[Kisiler])
}

//Router Protocol
protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref:Anasayfa)
}

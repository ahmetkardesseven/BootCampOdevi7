//
//  KisiKayitPresenter.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import Foundation

class YapilacaklariEklePresenter : ViewToPresenterYapilacaklariEkleProtocol {
    var YapilacaklariEkleInteractor: PresenterToInteractorYapilacaklariEkleProtocol?
    
    func kaydet(yapilacak_ad: String) {
        YapilacaklariEkleInteractor?.kaydet(yapilacak_ad: yapilacak_ad)
    }
}

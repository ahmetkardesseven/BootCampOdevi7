//
//  KisiKayitPresenter.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import Foundation

class KisiKayitPresenter : ViewToPresenterKisiKayitProtocol {
    var kisiKayitInteractor: PresenterToInteractorKisiKayitProtocol?
    
    func kaydet(kisi_ad: String) {
        kisiKayitInteractor?.kaydet(kisi_ad: kisi_ad)
    }
}

//
//  KisiDetayPresenter.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import Foundation


class YapilacakDetayPresenter : ViewToPresenterYapilacakDetayProtocol  {
    var YapilacakDetayInteractor: PresenterToInteractorYapilacakDetayProtocol?
    
    func guncelle(yapilacak_id: Int, yapilacak_ad: String) {
        YapilacakDetayInteractor?.guncelle(yapilacak_id: yapilacak_id, yapilacak_ad: yapilacak_ad)
    }
}

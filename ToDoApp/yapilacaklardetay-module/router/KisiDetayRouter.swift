//
//  KisiDetayRouter.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import Foundation

class YapilacakDetayRouter : PresenterToRouterYapilacakDetayProtocol{
    static func createModule(ref: YapilacakDetay) {
        ref.YapilacakDetayPresenterNesnesi = YapilacakDetayPresenter()
        ref.YapilacakDetayPresenterNesnesi?.YapilacakDetayInteractor = YapilacakDetayInteractor()
    }
}

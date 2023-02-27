//
//  KisiDetayRouter.swift
//  ToDoApp
//
//  Created by ahmet kardesseven on 27.02.2023.
//

import Foundation

class KisiDetayRouter : PresenterToRouterKisiDetayProtocol{
    static func createModule(ref: KisiDetay) {
        ref.kisiDetayPresenterNesnesi = KisiDetayPresenter()
        ref.kisiDetayPresenterNesnesi?.kisiDetayInteractor = KisiDetayInteractor()
    }
}

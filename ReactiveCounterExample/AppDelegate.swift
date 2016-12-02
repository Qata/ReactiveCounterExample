//
//  AppDelegate.swift
//  CounterExample
//
//  Created by Colin Eberhardt on 04/08/2016.
//  Copyright © 2016 Colin Eberhardt. All rights reserved.
//

import UIKit
import ReactiveReSwift

let middleware = Middleware<AppState> { _, _, action in
    print("Received action:")
    return action
}.map { _, _, action in
    print(action)
    return action
}

// The global application store, which is responsible for managing the appliction state.
let mainStore = Store(
    reducer: counterReducer,
    stateType: AppState.self,
    observable: ObservableProperty(AppState()),
    middleware: middleware
)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
}


//
//  ViewController.swift
//  CounterExample
//
//  Created by Colin Eberhardt on 04/08/2016.
//  Copyright © 2016 Colin Eberhardt. All rights reserved.
//

import UIKit
import ReactiveReSwift


class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    
    private let disposeBag = SubscriptionReferenceBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        disposeBag += mainStore.observable.subscribe { state in
            self.counterLabel.text = String(state.counter)
        }
    }
    
    // when either button is tapped, an action is dispatched to the store
    // in order to update the application state
    @IBAction func downTouch(_ sender: AnyObject) {
        mainStore.dispatch(AppAction.decrease)
    }
    
    @IBAction func upTouch(_ sender: AnyObject) {
        mainStore.dispatch(AppAction.increase)
    }

}


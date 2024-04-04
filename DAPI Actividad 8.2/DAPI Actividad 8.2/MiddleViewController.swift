//
//  MiddleViewController.swift
//  DAPA Actividad 8.2
//
//  Created by Alumno on 03/04/24.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var LifeCycleLabel: UILabel!
    var eventNumber : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addEvent(from: "Did Load");
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        addEvent(from: "Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        addEvent(from: "Did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        addEvent(from: "Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        addEvent(from: "Did Disappear")
    }
    
    func addEvent(from: String) {
        if let existingText = LifeCycleLabel.text {
            LifeCycleLabel.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }

}

//
//  ViewController.swift
//  MultiStepProgress
//
//  Created by iSlam AbdelAziz on 5/26/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bgView: UIView!

    let progress = IA_ProgressBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkGray
        // Do any additional setup after loading the view.
        progress.create(parentView: bgView, sections: [
            IA_MultiSection(_tintColor: .blue, _percentage: 1, _title: "blue"),
            IA_MultiSection(_tintColor: .red, _percentage: 1, _title: "red"),
            IA_MultiSection(_tintColor: .yellow, _percentage: 1, _title: "yellow"),
            IA_MultiSection(_tintColor: .systemGreen, _percentage: 0.5, _title: "green")
        ], font: nil)
        
        
    }


}


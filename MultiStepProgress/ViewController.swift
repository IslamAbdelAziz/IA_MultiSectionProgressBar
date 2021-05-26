//
//  ViewController.swift
//  MultiStepProgress
//
//  Created by iSlam AbdelAziz on 5/26/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bgView: UIView!

    let progress = IA_MultiSectionProgressBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        progress.create(parentView: bgView, sections: [
            IA_MultiSection(_tintColor: .blue, _percentage: 1),
            IA_MultiSection(_tintColor: .red, _percentage: 1),
            IA_MultiSection(_tintColor: .yellow, _percentage: 1),
            IA_MultiSection(_tintColor: .systemGreen, _percentage: 0.5)
        ])
        
        
    }


}


//
//  IA_ProgressBar.swift
//  MultiStepProgress
//
//  Created by iSlam AbdelAziz on 5/27/21.
//

import UIKit

class IA_ProgressBar: UIStackView{
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func create(parentView: UIView, sections: [IA_MultiSection], font: UIFont? = nil){
        guard sections.count > 0 else{
            fatalError("YOU MUST ADD SECTIONS")
        }

        self.frame = parentView.bounds
        parentView.addSubview(self)

        self.axis = .vertical
        self.distribution = .fillEqually
        self.spacing = 2
        
//        self.backgroundColor = .lightGray

        let progressView = IA_MultiSectionProgressBar()
        progressView.create(parentView: self, sections: sections)
        
        let indicatorView = IA_Progress_Indicator()
        indicatorView.create(parentView: self, sections: sections, font: font)
        
    }
    
    
}

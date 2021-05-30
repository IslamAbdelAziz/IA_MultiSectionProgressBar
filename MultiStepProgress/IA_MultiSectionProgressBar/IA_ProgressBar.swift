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
    
    
    func create(parentView: UIView, sections: [IA_MultiSection]){
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
        indicatorView.create(parentView: self, sections: sections)
        
//        let v = UIStackView()
//        v.axis = .horizontal
//        v.distribution = .fillEqually
//
////        v.backgroundColor = .systemPink
//
//        for item in sections{
//            let indicatorView = UIStackView()
//            indicatorView.axis = .horizontal
//            indicatorView.distribution = .fill
//            indicatorView.spacing = 2
//
//            let colorParentView = UIView()
//            let colorView = UIView(frame: CGRect(x: 4, y: 4, width: 12, height: 12))
//            colorView.backgroundColor = item.tintColor
//            print(item.tintColor)
//            colorView.heightAnchor.constraint(equalToConstant: 12).isActive = true
//            colorView.widthAnchor.constraint(equalToConstant: 12).isActive = true
//            colorParentView.addSubview(colorView)
//
//            let con = colorParentView.rightAnchor.constraint(equalTo: colorView.rightAnchor, constant: 4)
//
//            NSLayoutConstraint.activate([con])
//
//            let titleLabel = UILabel()
//            titleLabel.text = item.title
//
//            indicatorView.addArrangedSubview(colorParentView)
//            indicatorView.addArrangedSubview(titleLabel)
//
//            v.addArrangedSubview(indicatorView)
//
//        }
//        self.addArrangedSubview(v)
    }
    
    
}

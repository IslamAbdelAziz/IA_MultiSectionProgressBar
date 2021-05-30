//
//  IA_Progress_Indicator.swift
//  MultiStepProgress
//
//  Created by iSlam AbdelAziz on 5/30/21.
//

import UIKit

class IA_Progress_Indicator: UIStackView{
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func create(parentView: UIStackView, sections: [IA_MultiSection]){
        let v = UIStackView()
        v.axis = .horizontal
        v.distribution = .fillEqually
        
        //        v.backgroundColor = .systemPink
        
        for item in sections{
            let indicatorView = UIStackView()
            indicatorView.axis = .horizontal
            indicatorView.distribution = .fill
            indicatorView.spacing = 2
            
            let colorParentView = UIView()
            let colorView = UIView(frame: CGRect(x: 4, y: 4, width: 12, height: 12))
            colorView.backgroundColor = item.tintColor
            print(item.tintColor)
            colorView.heightAnchor.constraint(equalToConstant: 12).isActive = true
            colorView.widthAnchor.constraint(equalToConstant: 12).isActive = true
            colorParentView.addSubview(colorView)
            
            let con = colorParentView.rightAnchor.constraint(equalTo: colorView.rightAnchor, constant: 4)
            
            NSLayoutConstraint.activate([con])
            
            let titleLabel = UILabel()
            titleLabel.text = item.title
            
            indicatorView.addArrangedSubview(colorParentView)
            indicatorView.addArrangedSubview(titleLabel)
            
            v.addArrangedSubview(indicatorView)
        }
        
        parentView.addArrangedSubview(v)

    }
    
}

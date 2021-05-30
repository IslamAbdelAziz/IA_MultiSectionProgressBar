//
//  IA_MultiSectionProgressBar.swift
//  MultiStepProgress
//
//  Created by iSlam AbdelAziz on 5/26/21.
//

import UIKit

class IA_MultiSectionProgressBar: UIStackView{
    
    private var sectionsList: [UIProgressView] = []
    private var totalProgressWidth: CGFloat!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func create(parentView: UIStackView, sections: [IA_MultiSection]){
        guard sections.count > 0 else{
            fatalError("YOU MUST ADD SECTIONS")
        }
        self.clipsToBounds = true
        self.frame = parentView.bounds
        self.totalProgressWidth = parentView.frame.width
//        parentView.addSubview(self)
        parentView.addArrangedSubview(self)
        
        self.layer.cornerRadius = self.bounds.height * 0.2

        self.sectionsList.removeAll()
        self.axis = .horizontal
        self.alignment = .leading
        self.distribution = .fillProportionally
        self.spacing = -2
        
        self.backgroundColor = .lightGray
        
        var totalsectionsProgress: CGFloat = 0.0
        for i in 0 ... sections.count - 1{
            sections[i].zPosition = CGFloat(sections.count - i)
            totalsectionsProgress += sections[i].percentage
        }
        
        for item in sections{
            let prog = UIProgressView(progressViewStyle: .default)
            
            prog.progressTintColor = item.tintColor
            prog.widthAnchor.constraint(equalToConstant: totalProgressWidth * (item.percentage / totalsectionsProgress)).isActive = true

            prog.layer.zPosition = item.zPosition
            prog.progress = 1
            prog.heightAnchor.constraint(equalToConstant: self.bounds.height).isActive = true
            sectionsList.append(prog)
            self.addArrangedSubview(prog)
        }

    }
    
    
}


class IA_MultiSection{
    var tintColor: UIColor
    var percentage: CGFloat
    var zPosition: CGFloat
    var title: String

    init(_tintColor: UIColor, _percentage: CGFloat, _title: String) {
        tintColor = _tintColor
        percentage = _percentage
        zPosition = 0
        title = _title
    }
}

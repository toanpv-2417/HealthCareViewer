//
//  TextFieldWithTitle.swift
//  HealthCareViewer
//
//  Created by pham.van.toanc on 3/23/21.
//

import Foundation

import UIKit

public class TextFieldWithTitle  : BaseUIView {
    
    //MARK UI Property
    
    public var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    public var placeHolder: String? {
        didSet {
            textField.placeholder = placeHolder
        }
    }
    
    // MARK UI Element

    public override func initialize() {
        setupTitleLabel()
        setupViewTextField()
        setUpLineView()
    }
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        label.textColor = Theme.shared.primaryColor
        return label
    }()
    
    private let textField : UITextField = {
        let textField = UITextField()
        textField.textColor = Theme.shared.primaryColor
        return textField
    }()
    
    private let lineView : UIView = {
        let view = UIView()
        view.backgroundColor = Theme.shared.lineDeviderColor
        return view
    }()
    //MARK OBject LifeCycle
    
    
    
    
    //Setup View
    private func setupTitleLabel(){
    addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.top.equalToSuperview()
        }
    }
    private func setupViewTextField(){
    addSubview(textField)
        textField.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.width.equalToSuperview()
            make.height.equalTo(40)
        }
    }
    private func setUpLineView (){
    addSubview(lineView)
        lineView.snp.makeConstraints { (make) in
            make.top.equalTo(textField.snp.bottom).offset(Dimension.shared.heightLineDivider)
            make.height.equalTo(1)
            make.bottom.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        
    }
}

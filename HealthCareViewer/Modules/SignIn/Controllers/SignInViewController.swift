//
//  SignInViewController.swift
//  HealthCareViewer
//
//  Created by Pham Toan on 23/03/2021.
//

import UIKit

class SignInViewController: BaseViewController {
    
    // MARK : Property
    
    
    
   //MARK UI ELement
   private let logoImage : UIImageView = {
        let imageView = UIImageView()
        imageView.image =  UIImage(named: "b")
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 50
        
        return imageView
    }()
    
    
    
    private let patientInputView : TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.placeHolder = "input yout ID"
        view.title = "patient ID"
        return view
    }()
    
    
    private let passwordInputView : TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.placeHolder = "your password"
        view.title = "password"
        return view
       
    }()
    
    
    
    
    // MARK View lifecycle
    override func initialize() {
        super.initialize()
        setUpLogoImageView()
        setUpViewPatientInput()
    }
    
    
    
    //MARK :setup view
    private func setUpLogoImageView(){
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.top.equalToSuperview().offset(100)
            make.centerX.equalToSuperview()
        }
    }
    private func setUpViewPatientInput (){
        view.addSubview(patientInputView)
//        patientInputView.backgroundColor = .red
        patientInputView.snp.makeConstraints { (make) in
            make.top.equalTo(logoImage.snp.bottom).offset(Dimension.shared.largeVerticalMargin_56)
            make.left.equalToSuperview().offset(Dimension.shared.largeVerticalMargin_32)
            make.right.equalToSuperview().offset(-Dimension.shared.largeVerticalMargin_32)
        }
        view.addSubview(passwordInputView)
//        passwordInputView.backgroundColor = .gray
        passwordInputView.snp.makeConstraints { (make) in
            make.top.equalTo(patientInputView.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(Dimension.shared.largeVerticalMargin_32)
            make.right.equalToSuperview().offset(-Dimension.shared.largeVerticalMargin_32)
        }
    }
    
    
    

}

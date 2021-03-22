//
//  SignInViewController.swift
//  HealthCareViewer
//
//  Created by Pham Toan on 23/03/2021.
//

import UIKit

class SignInViewController: UIViewController {
    
   private let logoImage : UIImageView = {
        let imageView = UIImageView()
        imageView.image =  UIImage(named: "b")
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 50
        
        return imageView
    }()
    private let patientCodeLabel : UILabel = {
        let label = UILabel()
        label.text = "Patient ID"
        label.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        return label
    }()
    private let patientCodeTextField : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Patient ID input"
        return textField
    }()
    
    
    private let lineView : UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Do any additional setup after loading the view.
        setUpLogoImageView()
        setUpViewPatientLabel()
        setUpViewPatientTextField()
        setUpLineView()
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
        
    }
    private func setUpLogoImageView(){
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.top.equalToSuperview().offset(100)
            make.centerX.equalToSuperview()
        }
    }
    
    private func setUpViewPatientLabel(){
        view.addSubview(patientCodeLabel)
        patientCodeLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(40)
            make.top.equalTo(logoImage.snp.bottom).offset(50)
        }
    }
    private func setUpViewPatientTextField(){
        view.addSubview(patientCodeTextField)
        patientCodeTextField.snp.makeConstraints { (make) in
            make.top.equalTo(patientCodeLabel.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.height.equalTo(40)
        }
    }
    private func setUpLineView (){
        view.addSubview(lineView)
        lineView.snp.makeConstraints { (make) in
            make.top.equalTo(patientCodeTextField.snp.bottom).offset(0)
            make.left.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-40)
            make.height.equalTo(1)
        }
        
        
    }
    
}

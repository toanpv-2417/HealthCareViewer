//
//  BaseView.swift
//  HealthCareViewer
//
//  Created by pham.van.toanc on 3/23/21.
//

import Foundation
import UIKit

public class BaseUIView : UIView ,ReuseableView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initialize() {
        
    }
}

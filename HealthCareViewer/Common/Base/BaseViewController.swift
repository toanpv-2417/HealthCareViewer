//
//  BaseViewController.swift
//  HealthCareViewer
//
//  Created by pham.van.toanc on 3/23/21.
//

import UIKit

protocol  ReuseableView {
    func initialize()
}

public class BaseViewController: UIViewController, ReuseableView {

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        initialize()
    }
    
    public func initialize() {

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

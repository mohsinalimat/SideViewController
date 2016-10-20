//
//  ViewController.swift
//  SideViewController
//
//  Created by caonongyun on 16/10/20.
//  Copyright © 2016年 CNY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.grayColor()
        title = "侧滑菜单"
        initSubview()
    }
    
    private func initSubview(){
        let leftbar = UIBarButtonItem(image: UIImage(named: "nav_home_side_menu"), style: .Plain, target: self, action: #selector(leftAction(_:)))
        let rightbar = UIBarButtonItem(image: UIImage(named: "nav_add_book"), style: .Plain, target: self, action: #selector(rightAction(_:)))
        
        navigationItem.leftBarButtonItem = leftbar
        navigationItem.rightBarButtonItem = rightbar
    }
    
    @objc private func leftAction(btn:UIButton){
        SideViewController.sharedInstance.showLeftViewController()
    }
    
    @objc private func rightAction(btn:UIButton){
        SideViewController.sharedInstance.showRightViewController()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


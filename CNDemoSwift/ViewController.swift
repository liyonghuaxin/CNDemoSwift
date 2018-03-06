//
//  ViewController.swift
//  CNDemoSwift
//
//  Created by apple on 2018/3/6.
//  Copyright © 2018年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    var table:UITableView!
    let arry:[String] = ["我是谁", "我从哪里来", "要到哪里去"]
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //设置UITableView的位置
        let rect = self.view.frame
        table = UITableView(frame: rect)
        //self.table.backgroundColor = UIColor.white
        
        //设置数据源
        self.table.dataSource = self
        //设置代理
        self.table.delegate = self
        self.view.addSubview(table)
        //注册UITableView，cellID为重复使用cell的Identifier
        self.table.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
    }
    /*
     @注意：我们前边的ViewController继承了UITableViewDataSource
     @和 UITableViewCelegate。如果我们不注册下面的三个方法XCode就会报错！！！
     */
    //设置cell的数量
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arry.count
    }
    
    //设置section的数量
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //设置tableview的cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (table.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)) as UITableViewCell
        cell.textLabel?.text = arry[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


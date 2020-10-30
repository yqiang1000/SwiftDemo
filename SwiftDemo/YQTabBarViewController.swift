//
//  YQTabBarViewController.swift
//  SwiftDemo
//
//  Created by yeqiang on 2020/10/30.
//

import UIKit

class YQTabBarViewController: UITabBarController {

    var viewCtrls:Array = [UIViewController]()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewCtrls.append(setupChildViewController(HomeViewController.init(), "首页", "tabbar_icon_home", "tabbar_icon_home_selected"))
        viewCtrls.append(setupChildViewController(TalkViewController.init(), "话题", "tabbar_icon_friend", "tabbar_icon_friend_selected"))
        viewCtrls.append(setupChildViewController(YQViewController.init(), "", "tabbar_icon_publish", "tabbar_icon_publish"))
        viewCtrls.append(setupChildViewController(LifeViewController.init(), "生活", "tabbar_icon_all", "tabbar_icon_all_selected"))
        viewCtrls.append(setupChildViewController(MineViewController.init(), "个人中心", "tabbar_icon_me", "tabbar_icon_me_selected"))
        
        viewControllers = viewCtrls;
    }
    
    func setupChildViewController(_ vc:YQViewController!, _ title:String, _ imgNormal: String, _ imgSelected: String) -> UIViewController {
        vc.view.backgroundColor = UIColor.white
        let navi = YQNaviViewController.init(rootViewController: vc)
        let barItem = UITabBarItem.init(title: title, image: UIImage(named: imgNormal), selectedImage: UIImage(named: imgSelected))
        vc.tabBarItem = barItem
        vc.title = title
        return navi
        
    }
    
    
}

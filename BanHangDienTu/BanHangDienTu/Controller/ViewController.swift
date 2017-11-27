//
//  ViewController.swift
//  BanHangDienTu
//
//  Created by Ngoc Dai on 11/24/17.
//  Copyright © 2017 Ngoc Dai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var contentWidth:CGFloat = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenus()

        // Do any additional setup after loading the view.
        scrollView.delegate = self
        ScrollView()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x/CGFloat(375))
    }
    
    func ScrollView() {
        for image in 0...3 {
            let imageToDisplay = UIImage(named: "\(image)")
            let imageView = UIImageView(image: imageToDisplay)
            
            let xCoordinate = view.frame.midX + view.frame.width * CGFloat(image)
            contentWidth += view.frame.width
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: xCoordinate - 75, y:(view.frame.height / 4) - 150, width: 150, height: 150)
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.height / 3)
        
    }
    
    //MARK: Side menu
    func sideMenus() {
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    //MARK: Collection view
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return Data.name.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellID", for: indexPath)
//
//        return cell
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

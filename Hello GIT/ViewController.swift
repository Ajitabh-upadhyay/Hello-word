//
//  ViewController.swift
//  Hello GIT
// Test
//  Created by Ajitabh Upadhyay on 05/03/17.
//  Copyright © 2017 Ajitabh Upadhyay. All rights reserved.
//

// version bob branch modified first time to commit RESET

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate,UITableViewDataSource{

    var scroolView:UIScrollView = UIScrollView()
    var btn:UIButton!
    var name:String!
   @IBOutlet var tableview:UITableView!
    
   // var collectionView = UICollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("git change first")
        print("git second commit")
        var carmodel:carModel = carModel()
        
        carmodel.modelNo = 1234
        
        var carmodel2 = carmodel
        
        carmodel2.modelNo = 4567
        
        var request:NSMutableURLRequest = NSMutableURLRequest.init(url: URL.init(string: "")!)
        
        request.timeoutInterval = 30
        
        
        
        
        
     print("carmodel\(carmodel.modelNo)and non changee no is \(carmodel2.modelNo)")
        
        var datamodel:dataModel = dataModel(name:"raju")
        var datamodel2 = datamodel
        
        datamodel2.name = "amit"
        
        print("before change \(datamodel.name) after changed \(datamodel2.name)")
        
    }
    
    override func viewDidLayoutSubviews() {
        
        
        scroolView.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        
        scroolView.contentSize = CGSize.init(width: Int(self.view.frame.width*4), height: 0)
        scroolView.delegate = self
        scroolView.isScrollEnabled = true
        scroolView.isPagingEnabled = true
        scroolView.setZoomScale(100, animated: true)
        
        for item in 0...3 {
            
            let xPosition = (Int(self.view.frame.width) * item)+5
            let imageview:UIImageView = UIImageView()
            
            imageview.frame = CGRect.init(x: CGFloat(xPosition), y: CGFloat(5), width: self.view.frame.width - 10, height: self.view.frame.height - 10)
            imageview.backgroundColor = UIColor.blue
            
            scroolView.addSubview(imageview)
        }
        
        //self.view.addSubview(scroolView)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
       print(scroolView.contentOffset.x)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
       //  print(scroolView.contentOffset.x)
    }
    
    
    // Mark: UItableView Datasource and Delegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return 2
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as UITableViewCell!
        
        // set the text from the data model
        cell.textLabel?.text = "Collection Cell"
        
//        var collectionView = UICollectionView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: 30))
//       // collectionView.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: 30)
//        
//        let layout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
//        layout.itemSize = CGSize(width: 111, height: 111)
//        
//        collectionView = UICollectionView(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: 30), collectionViewLayout: layout)
//        
//        collectionView.delegate = self
//        collectionView.dataSource = self
//        cell.addSubview(collectionView)
//        
        
        
        return cell
        
    }
    
    
    //: MARK CollectionView Delegate AND Datasource
    
  /*  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let itemCell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        let imageview:UIImageView = UIImageView.init(frame: CGRect.init(x: 1, y: 1, width: 25, height: 25))
        imageview.backgroundColor = UIColor.red
        
        itemCell.addSubview(imageview)
        
        return itemCell
        
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let cellSize = CGSize(width: 25, height: 25)
        //
        return cellSize
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsetsMake(0, 0, 0, 0)
    }*/

}

extension ViewController{


    
    
    

}

struct carModel {
    
    var modelNo:Int = 2435
    
    
}


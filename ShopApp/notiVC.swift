

import UIKit
import Parchment

class notiVC: UIViewController {
    
  
    @IBOutlet weak var alertContent: UIView!
    
    
    @IBOutlet weak var backbtn: UIImageView!
    @IBOutlet weak var topPart: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load each of the view controllers you want to embed
        // from the storyboard.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let firstViewController = storyboard.instantiateViewController(withIdentifier: "myAlerts")
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "myNews")
        
        // Initialize a FixedPagingViewController and pass
        // in the view controllers.
        let pagingViewController = FixedPagingViewController(viewControllers: [
            firstViewController,
            secondViewController
            ])
        
        // Make sure you add the PagingViewController as a child view
        // controller and contrain it to the edges of the view.
        addChild(pagingViewController)
        alertContent.addSubview(pagingViewController.view)
        alertContent.constrainToEdges(pagingViewController.view)
        pagingViewController.didMove(toParent: self)
        
        
        //backbtn
        let backTap = UITapGestureRecognizer(target: self, action: #selector(backClicked(gesture:)))
        backbtn.isUserInteractionEnabled = true
        backbtn.addGestureRecognizer(backTap)
        
        //topPart shadow
        topPart.layer.shadowOffset =  CGSize(width: 0.0, height: 2.0)
        topPart.layer.shadowOpacity = 0.5
        topPart.layer.shadowRadius = 0.3
        topPart.layer.masksToBounds = false
        topPart.layer.cornerRadius = 0
        
        
    }
    
    
    
    @objc func backClicked(gesture: UIGestureRecognizer) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
}


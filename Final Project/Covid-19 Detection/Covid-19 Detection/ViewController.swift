//
//  ViewController.swift
//  Covid-19 Detection
//
//  Created by Ahmed on 02/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
     
    @IBOutlet var logoo: UIImageView!
    @IBOutlet var XRayBtn: UIButton!
    @IBOutlet var sickBtn: UIButton!
    @IBOutlet var protectBtn: UIButton!
    @IBOutlet var dashboardBtn: UIButton!
    @IBOutlet var hospitaBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        XRayBtn.layer.cornerRadius = 10
        sickBtn.layer.cornerRadius = 10
        protectBtn.layer.cornerRadius = 10
        dashboardBtn.layer.cornerRadius = 10
        hospitaBtn.layer.cornerRadius = 10
        logoo.image = UIImage(named: "logoo")
        
    }

    @IBAction func XRayDetectionBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "XRayVC") as! XRayViewController
        vc.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func protectionBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Protect") as! ProtectTableViewController
        vc.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func IFSickBtn(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SickVC") as! sickTableViewController
        vc.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    @IBAction func DashoardBtn(_ sender: Any) {
         
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Dasboard") as! DashboardViewController
        vc.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func HospitalBtn(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Hospital") as! HospitalsViewController
        vc.navigationController?.pushViewController(vc, animated: true)
        
    }
}


//
//  DashboardViewController.swift
//  Covid-19 Detection
//
//  Created by Ahmed on 02/07/2022.
//

import UIKit
import WebKit
class DashboardViewController: UIViewController, WKNavigationDelegate {

    var webView : WKWebView!
     
    // creating web view
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "WHO Coronavirus (COVID-19) Dashboard"
        
         let url = URL(string:"https://covid19.who.int/region/emro/country/eg")!
         webView.load(URLRequest(url: url))
         webView.allowsBackForwardNavigationGestures = true
        
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let back = UIBarButtonItem(image: UIImage(named:"back"), style: .plain, target: webView, action: #selector(webView.goBack))
        
        let forward = UIBarButtonItem(image: UIImage(named: "for"), style: .plain, target: webView, action: #selector(webView.goForward))
        
        toolbarItems = [ back , spacer , forward ]
        navigationController?.isToolbarHidden = false
        
      
    }
    
 
}

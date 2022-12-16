//
//  XRayViewController.swift
//  Covid-19 Detection
//
//  Created by Ahmed on 03/07/2022.
//

import UIKit
import WebKit
class XRayViewController: UIViewController, WKNavigationDelegate {
    
    var webView : WKWebView!
     
     
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        title = "X-Ray"
        
         let url = URL(string:"http://127.0.0.1:5000/")!
         webView.load(URLRequest(url: url))
         webView.allowsBackForwardNavigationGestures = true
        
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let back = UIBarButtonItem(image: UIImage(named:"back"), style: .plain, target: webView, action: #selector(webView.goBack))
        
        let forward = UIBarButtonItem(image: UIImage(named: "for"), style: .plain, target: webView, action: #selector(webView.goForward))
        
        toolbarItems = [ back , spacer , forward ]
        navigationController?.isToolbarHidden = false
        
        
         
    }
    

}

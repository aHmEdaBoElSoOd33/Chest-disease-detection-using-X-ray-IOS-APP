//
//  HospitalsViewController.swift
//  Covid-19 Detection
//
//  Created by Ahmed on 02/07/2022.
//

import UIKit
import WebKit
class HospitalsViewController: UIViewController, WKNavigationDelegate {

    var webView : WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Hospitals"
        
         let url = URL(string:"https://www.google.com/search?rlz=1C5CHFA_enEG986EG986&tbs=lf:1,lf_ui:2&tbm=lcl&sxsrf=ALiCzsYj46Xj0rKgbAAnRjo6vw-oS1LoSQ:1656720976303&q=%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%8A%D8%A7%D8%AA+%D8%A7%D9%84%D8%B5%D8%AF%D8%B1+%D9%81%D9%8A+%D9%85%D8%B5%D8%B1&rflfq=1&num=10&ved=2ahUKEwiD5aLK9tj4AhU2W_EDHdDTBCAQtgN6BAhMEAQ#rlfi=hd:;si:;mv:[[32.0745585123453,52.42430209635984],[10.06772249801896,3.3813333463598427],null,[21.48516074889073,27.902817721359842],5]")!
         webView.load(URLRequest(url: url))
         webView.allowsBackForwardNavigationGestures = true
        
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let back = UIBarButtonItem(image: UIImage(named:"back"), style: .plain, target: webView, action: #selector(webView.goBack))
        
        let forward = UIBarButtonItem(image: UIImage(named: "for"), style: .plain, target: webView, action: #selector(webView.goForward))
        
        toolbarItems = [ back , spacer , forward ]
        navigationController?.isToolbarHidden = false
        
    }
    

 
}

//
//  VKViewController.swift
//  AppContact
//
//  Created by Alex Larin on 22/09/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit
import WebKit
import Alamofire

class VKViewController: UIViewController {
    
    @IBOutlet weak var webview: WKWebView!{
        didSet{webview.navigationDelegate = self
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "oauth.vk.com"
        urlComponents.path = "/authorize"
        urlComponents.queryItems = [
            URLQueryItem(name: "client_id", value: "7143864"),
            URLQueryItem(name: "display", value: "mobile"),
            URLQueryItem(name: "redirect_uri", value: "https://oauth.vk.com/blank.html"),
            URLQueryItem(name: "scope", value: "262150"),
            URLQueryItem(name: "response_type", value: "token"),
            URLQueryItem(name: "v", value: "5.101"),
        ]
        
        let request = URLRequest(url: urlComponents.url!)
        
        webview.load(request)
        
       
      
        
        Alamofire.request("https://api.vk.com/method/friends.get?user_ids=7143864&fields=bdate&access_token=c84a9082d4a9678bbd96b502995d0b40951f1258764e5e778976bb03f5d0dcf952c18207133536108a9c4&v=5.101").responseJSON { response in
            
            print(response.value ?? "")
        }
        Alamofire.request("https://api.vk.com/method/groups.get?user_ids=7143864&extended=1&access_token=c84a9082d4a9678bbd96b502995d0b40951f1258764e5e778976bb03f5d0dcf952c18207133536108a9c4&v=5.101").responseJSON { response in
            
            print(response.value ?? "")
        }
        Alamofire.request("https://api.vk.com/method/photos.getAll?owner_id=-7143864&access_token=c84a9082d4a9678bbd96b502995d0b40951f1258764e5e778976bb03f5d0dcf952c18207133536108a9c4&v=5.101").responseJSON { response in
            
            print(response.value ?? "no photo")
        }
        
        Alamofire.request("https://api.vk.com/method/photos.getAll?owner_id=-7143864&access_token=c84a9082d4a9678bbd96b502995d0b40951f1258764e5e778976bb03f5d0dcf952c18207133536108a9c4&v=5.101").responseJSON { response in
            
            print(response.value ?? "no photo")
        }        // Do any additional setup after loading the view.
      }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

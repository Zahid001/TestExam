//
//  ViewController.swift
//  Bongo iOS Code Test
//
//  Created by Md Zahidul Islam Mazumder on 23/7/20.
//  Copyright © 2020 Md Zahidul Islam Mazumder. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet weak var resultTextView: UITextView!
    
    var htmlString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // resultTextView.delegate = self
        // Do any additional setup after loading the view.
        
        //        let myURLString = "https://bongobd.com/disclaimer"
        //        guard let myURL = URL(string: myURLString) else {
        //            print("Error: \(myURLString) doesn't seem to be a valid URL")
        //            return
        //        }
        //
        //        do {
        //            let myHTMLString = try String(contentsOf: myURL, encoding: .ascii)
        //            print("HTML : \(myHTMLString)")
        //        } catch let error {
        //            print("Error: \(error)")
        //        }
        //
        
        var request = URLRequest(url: URL(string: "https:bongobd.com/disclaimer")!)
        request.httpMethod = "GET"
        let session = URLSession.init(configuration: URLSessionConfiguration.default)
        session.dataTask(with: request) {data,response,error in
            if let data = data {
                if let contents = String(data: data, encoding: .ascii){
                    self.htmlString = contents
                    print("HTML : \(contents )")
                }
                
                
            }
        }.resume()
        
        

    }
    
    
    @IBAction func callApiBtnAction(_ sender: UIButton) {
        
        
        resultTextView.textColor = .blue
        //resultTextView.text = htmlString
        executeTask(givenString: htmlString)
        
        print("\n\n")
        print(MyHandler().countWords(givenString: "Bongo iOS Code Test"))
        
    }
    
    
    func executeTask(givenString:String){
        
        let handler = MyHandler()
        
        
        resultTextView.text = "Last Character \n" + handler.lastCharacter(givenString: givenString) + "\n Every 10th number of character \n" + handler.getEvery10thChar(givenString: givenString) + "\n Total Word \n " + handler.countWords(givenString: givenString)
    }
    
    
    
}


//
//  ViewController.swift
//  2015.3.11
//
//  Created by 20151104678 on 17/3/13.
//  Copyright © 2017年 20151104678. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
    super.viewDidLoad()
    }
    var first:String="";
    var flg="#"
    var point:String="";
    
    @IBOutlet weak var sum: UITextField!
    @IBAction func one(_ sender: Any) {
        sum.text=sum.text!+"1"
    }
    @IBAction func two(_ sender: Any) {
        sum.text=sum.text!+"2"
    }
    @IBAction func three(_ sender: Any) {
        sum.text=sum.text!+"3"
    }
    @IBAction func four(_ sender: Any) {
        sum.text=sum.text!+"4"
    }
    @IBAction func five(_ sender: Any) {
        sum.text=sum.text!+"5"
    }
    @IBAction func six(_ sender: Any) {
        sum.text=sum.text!+"6"
    }
    @IBAction func seven(_ sender: Any) {
        sum.text=sum.text!+"7"
    }
    @IBAction func eight(_ sender: Any) {
        sum.text=sum.text!+"8"
    }
    @IBAction func nine(_ sender: Any) {
        sum.text=sum.text!+"9"
    }
    @IBAction func zore(_ sender: Any) {
        sum.text=sum.text!+"0"
    }
    @IBAction func add(_ sender: Any) {
     first = sum.text!
        sum.text=""
        flg="+"
        
    }
    @IBAction func min(_ sender: Any) {
        first = sum.text!
        sum.text=""
        flg="-"
    }
    @IBAction func ride(_ sender: Any) {
        first = sum.text!
        sum.text=""
        flg="*"
    }
    @IBAction func rid(_ sender: Any) {
        first = sum.text!
        sum.text=""
        flg="/"
    }
    @IBAction func equal(_ sender: Any) {
        if( point == ".")
        {
        switch flg
        {
        case"+":
            var temp:Double
            temp = Double (first)! + Double(sum.text!)!
            sum.text = "\(temp)"
        case"-":
            var temp:Double
            temp = Double(first)! - Double(sum.text!)!
            sum.text = "\(temp)"
        case"*":
            var temp:Double
            temp = Double(first)! * Double(sum.text!)!
            sum.text = "\(temp)"
        case"/":
            var temp:Double
            if ( sum.text == "0"){
                sum.text = "error"
            }
            else{
            temp = Double(first)! / Double(sum.text!)!
            sum.text = "\(temp)"
             
            }

        default:
            sum.text=sum.text
        }
        }
        else{
            var temp1:Int
            switch flg
            {
            case"+":
            temp1 = Int (first)! + Int(sum.text!)!
            sum.text = "\(temp1)"                                                                                                                                                                                                                                                                                                                                                                                                                                               
            case"-":
            temp1 = Int(first)! - Int(sum.text!)!
            sum.text = "\(temp1)"
            case"*":
            temp1 = Int(first)! * Int(sum.text!)!
            sum.text = "\(temp1)"
            case"/":
                if ( sum.text == "0"){
                    sum.text = "error"
                }
                else if (point == "."){
                    var temp2 : Double
                    temp2 = Double(first)! / Double(sum.text!)!
                    sum.text = "\(temp2)"
                }
                else{
                    var temp1 : Double
                    temp1 = Double(first)! / Double(sum.text!)!
                    sum.text = "\(temp1)"

                    
                }
            default:
            sum.text=sum.text
        }
        }
    }
    @IBAction func del(_ sender: Any) {
        sum.text=""
        flg=""
        first = ""
        
    }
    @IBAction func C(_ sender: Any) {
        sum.text = ""
        
    }
    
    @IBAction func point(_ sender: Any) {
        if ( sum.text!.contains( "." ) ){
            sum.text = sum.text
        }
        else{
            point = "."
            sum.text = sum.text! + "."
        }
    }



    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


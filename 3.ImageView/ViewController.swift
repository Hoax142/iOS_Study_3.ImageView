//
//  ViewController.swift
//  3.ImageView
//
//  Created by 오현호 on 2020/08/27.
//  Copyright © 2020 hoax. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isZoom = false // 확대 여부를 나타내는 bool 변수
    var imgOn: UIImage? // 켜진 전구 이미지가 있는 UIImage 타입의 변수
    var imgOff: UIImage? // 꺼진 전구 이미지가 있는 UIImage 타입의 변수
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgOn = UIImage(named: "lamp_on.png") // imgOn에 "lamp_on.png" 할당
        imgOff = UIImage(named: "lamp_off.png") // imgOff에 "lamp_off.png" 할당
        
        imageView.image = imgOn
    }
    
    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale: CGFloat = 1.5
        var newWidth: CGFloat, newHeight: CGFloat
        
        if isZoom { // 확대 상태
            newWidth = imageView.frame.width / scale // imageView의 넓이 값 / scale
            newHeight = imageView.frame.height / scale // imageView의 높이 값 / scale
            btnResize.setTitle("확대", for: .normal)
        } else { // 축소 상태
            newWidth = imageView.frame.width * scale // imageView의 넓이 값 * scale
            newHeight = imageView.frame.height * scale // imageView의 높이 값 * scale
            btnResize.setTitle("축소", for: .normal)
        }
        
        imageView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn { // switch on 상태
            imageView.image = imgOn
        } else { // switch oㄹㄹ 상태
            imageView.image = imgOff
        }
    }
    

}


//
//  Datamodel.swift
//  EatmeIfyoucan
//
//  Created by sotuken on 2017/12/14.
//  Copyright © 2017年 sotuken. All rights reserved.
//

import Foundation

struct Player : Codable{
    let name:String     //名前
    let isWolf:Bool     //狼か
    let targetID:Int    //ターゲットID
    let isSleep:Bool    //眠ったか
    
}

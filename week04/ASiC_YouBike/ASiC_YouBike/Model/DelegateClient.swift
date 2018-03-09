//
//  DelegateClient.swift
//  ASiC_YouBike
//
//  Created by WU CHIH WEI on 2018/2/24.
//  Copyright © 2018年 WU CHIH WEI. All rights reserved.
//

import Foundation

protocol DelegateClientProtocol: class {
    
    func didGetDataFromFile(stationInfo: StationInfo) -> Void

}

/*
 Call the loadData() method, DelegateClient will generate a StationInfo instance and pass the StationInfo instance to it's delegate object through the method didGetDataFromFile(:)
 */

struct DelegateClient {
    
    weak var delegate: DelegateClientProtocol?
    
    func loadData() {
        //生成一個 YouBikeManager instance
        let manager = YouBikeManager.createManagerFromFile()
        //檢查一下 array 的資料，避免 over index.
        guard manager.stations.count > 0 else { return }
        //讓 delegate 這個變數儲存的物件去執行 method，並透過這個 method 把帶有 StationInfo 的物件傳遞出去。
        //這是我原先設計讓你們拿到 Station info 的方式。
        self.delegate?.didGetDataFromFile(stationInfo: manager.stations[0])
    }
    
}

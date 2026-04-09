//
//  NetWorkSevice.swift
//  SwiftBasic01
//
//  Created by 李果洲 on 2026/4/9.
//

import Foundation
import Alamofire

class NetWorkSevice {
    static let shared = NetWorkSevice()
    private init() {}
    private let baseURL = "http://192.168.101.8:8000/api/v1"
    
    func fetchStudentList(page:Int = 1,pageSize:Int = 10,completion:@escaping([Student])->Void) {
        let url = "\(baseURL)/students"
        let params:[String:Any] = ["page":page,"page_size":pageSize]
        AF.request(url,method: .get,parameters: params).responseDecodable(of: StudentListResponse.self) { response in
            switch response.result {
            case .success(let res):
                completion(res.students)
            case .failure(let error):
                print("获取学生列表失败\(error)")
                completion([])
            }
        }
    }
}

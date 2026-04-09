//
//  StudentModel.swift
//  SwiftBasic01
//
//  Created by 李果洲 on 2026/4/9.
//

import Foundation

enum Gender:String,Codable {
    case male,female,other
}
enum StudentStatus:String,Codable {
    case active,graduated,suspended,withdrawn
}
struct Student:Identifiable,Codable {
    let id: Int
    let student_no: String
    let name: String
    let gender: Gender
    let age: Int
    let phone: String
    let email: String?
    let address: String?
    let status: StudentStatus
    let created_at: String
    let updated_at: String
}
// 列表响应模型
struct StudentListResponse: Codable {
    let total: Int
    let page: Int
    let page_size: Int
    let students: [Student]
}
// 创建学生请求模型
struct StudentCreate: Codable {
    let name: String
    let gender: Gender
    let age: Int
    let phone: String
    let email: String?
    let address: String?
    let parent_name: String
    let parent_phone: String
}

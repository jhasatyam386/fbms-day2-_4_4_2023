//
//  dbms.swift
//  fbms day2 _4_4_2023
//
//  Created by R&W on 04/04/23.
//

import Foundation

struct Model{
    var name : String
    var id : Int
}

class fmbsHelper{
    
    static var file : FMDatabase!
    
    static func createFile(){
        var x = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        x.appendPathComponent("My FMDB file.db")
        file = FMDatabase(url: x)
        file.open()
        print(x.path)
        createTable()
        
        
    }
    static func createTable(){
        let q = " Create Table if not exists Students (name text , id integer"
        try? file.executeUpdate(q, values: nil)
        print("Create table")
        
        
    }
    static func addData(name:String,id:Int){
        let q = " insert into Students values ('\(name)', \(id))"
        try? file.executeUpdate(q, values: [name,id])
        print("add data")
        
    }
    static func getData() -> [Model]{
        var arr = [Model]()
        let get = "select * from Students"
        if let data = try? file.executeQuery(get, values: nil){

            while data .next() {
                let name = data.object(forColumn: "name") as? String ?? ""
                let id = data.object(forColumn: "id") as? Int ?? 0
                let obj = Model(name: name, id: id)
               
                arr.append(obj)
            }
        }
        return arr

    }
static func deleteData(name:String,id:Int){
        let q = "DELETE FROM Students WHERE id = \(id)"
        try? file.executeUpdate(q, values: nil)
        print("Data Delete")
        
    }
}

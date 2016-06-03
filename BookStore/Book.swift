//
//  Book.swift
//  BookStore
//
//  Created by MF839-008 on 2016. 6. 1..
//  Copyright © 2016년 JRChae. All rights reserved.
//

import Foundation

class Book:NSObject, NSCoding {
    var title:String?
    var writer:String?
    var publisher:String?
    var date:String?
    var desc:String?
    var coverImage:String?
    var url:String?
    
    override init() {
        
    }
    
    required init(coder aDecoder:NSCoder) {
        self.title = aDecoder.decodeObjectForKey("title") as? String
        self.writer = aDecoder.decodeObjectForKey("writer") as? String
        self.publisher = aDecoder.decodeObjectForKey("publisher") as? String
        self.date = aDecoder.decodeObjectForKey("date") as? String
        self.desc = aDecoder.decodeObjectForKey("desc") as? String
        self.coverImage = aDecoder.decodeObjectForKey("coverImage") as? String
        self.url = aDecoder.decodeObjectForKey("url") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.title,forKey:"title")
        aCoder.encodeObject(self.writer,forKey:"writer")
        aCoder.encodeObject(self.publisher,forKey:"publisher")
        aCoder.encodeObject(self.date,forKey:"date")
        aCoder.encodeObject(self.desc,forKey:"desc")
        aCoder.encodeObject(self.coverImage,forKey:"coverImage")
        aCoder.encodeObject(self.url,forKey:"url")
    }
}

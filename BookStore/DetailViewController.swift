//
//  DetailViewController.swift
//  BookStore
//
//  Created by MF839-008 on 2016. 6. 2..
//  Copyright © 2016년 JRChae. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var bookCover: UIImageView!
    @IBOutlet weak var bookWriter: UILabel!
    @IBOutlet weak var bookPublisher: UILabel!
    @IBOutlet weak var bookDate: UILabel!
    @IBOutlet weak var bookDescription: UITextView!

    var book:Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let tmpBook = book {
            self.navigationItem.title = tmpBook.title // Navigation Title 할당
            
            bookCover.image = UIImage(named: tmpBook.coverImage!)
            bookWriter.text = tmpBook.writer
            bookPublisher.text = tmpBook.publisher
            bookDate.text = tmpBook.date
            bookDescription.text = tmpBook.desc
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let bookWebView = segue.destinationViewController as? WebViewController
        bookWebView?.bookUrl = book?.url
    }
}

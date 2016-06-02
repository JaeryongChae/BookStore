//
//  BookTableViewController.swift
//  BookStore
//
//  Created by MF839-008 on 2016. 6. 1..
//  Copyright © 2016년 JRChae. All rights reserved.
//

import UIKit

class BookTableViewController: UITableViewController, UIAlertViewDelegate {
    
    var books = [Book]()

    @IBAction func sowPopup(sender: AnyObject) {
// Case #1 : AlertView
//        let alert = UIAlertView(title: "선택",
//                                message: "항목을 선택하세요",
//                                delegate: self,
//                                cancelButtonTitle: "취소",
//                                otherButtonTitles: "버튼 A", "버튼 B", "버튼 C") // iOS 9.0 에서 사용 했음.
//        alert.show()
        
// Case #2 : AlertController #1 // UIAlertControllerStyle.Alert
//        let alert = UIAlertController(title: "알림",
//                                      message: "샘플",
//                                      preferredStyle: UIAlertControllerStyle.Alert)
//        
//        let cancelAction = UIAlertAction(title: "취소",
//                                         style: UIAlertActionStyle.Cancel,
//                                         handler: nil)
//        
//        alert.addAction(cancelAction) // 취소버튼 추가
//        self.presentViewController(alert, animated: true, completion: nil) // Popup 창 보여주기
//
        
// Case #3 : AlertController #2 // .ActionSheet
//        let alert = UIAlertController(title: "",
//                                      message: "액션시트",
//                                      preferredStyle: .ActionSheet)
//        
//        let cancelAction = UIAlertAction(title:"취소", style: .Cancel, handler:nil)
//        let saveAction = UIAlertAction(title:"저장", style: .Destructive) {  // handler표기 하지 않아도 됨.
//            (_) in
//            print("저장완료!!")
//        }
//        /*
//        let saveAction = UIAlertAction(title:"저장", style: .Destructive, handler: {
//                                                                        (_) in
//                                                                        print("저장완료!!") }) 와 동일한 표현
//        */
//    
//        alert.addAction(cancelAction)
//        alert.addAction(saveAction)
//        
//        self.presentViewController(alert, animated: true, completion: nil)
        
        
// Case #4 : AlertController #3 // .ActionSheet
//        let alert = UIAlertController(title: "로그인",
//                                      message: "서비스",
//                                      preferredStyle: .Alert)
//        let cancelAction = UIAlertAction(title:"취소",
//                                         style: .Cancel,
//                                         handler: nil)
//        let facebookLogin = UIAlertAction(title: "Facebook",
//                                          style: .Default,
//                                          handler: { (action) in print("Facebook") })
//        let kakaoLogin = UIAlertAction(title: "Kakao",
//                                          style: .Default,
//                                          handler: { (action) in print("Kakao") })
//        let twitterLogin = UIAlertAction(title: "Twitter",
//                                       style: .Default,
//                                       handler: { (action) in print("Twitter") })
//        
//        alert.addAction(cancelAction)
//        alert.addAction(facebookLogin)
//        alert.addAction(kakaoLogin)
//        alert.addAction(twitterLogin)
//        
//        self.presentViewController(alert, animated: true, completion: nil)
        
// Case #5 : AlertController #4 // .ActionSheet
        let alert = UIAlertController(title: "로그인",
                                      message: "로그인 정보를 입력하세요.",
                                      preferredStyle: .Alert)
        
        alert.addTextFieldWithConfigurationHandler({(textField) in textField.placeholder = "아이디" })
        alert.addTextFieldWithConfigurationHandler({(textField) in textField.placeholder = "비밀번호"
                                                    textField.secureTextEntry = true}) // 입력값이 보이지 않도록
        

        let okAction = UIAlertAction(title: "확인",
                                     style: .Default,
                                     handler: {
                                        (_) in
                                        if let id = alert.textFields?[0].text {
                                            print("id = \(id)")
                                        }
                                        if let password = alert.textFields?[1].text {
                                            print("password = \(password)")
                                        }
                                        })
        
        let cancelAction = UIAlertAction(title: "취소",
                                         style: .Cancel,
                                         handler:nil)
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        self.presentViewController(alert, animated: true, completion: nil)
   }

// Case #1 : AlertView
//    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex:Int) {
//        print("Button Index = \(buttonIndex)")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let book1 = Book()
        book1.title = "기자의 글쓰기"
        book1.date = "2016.05.31"
        book1.coverImage = "book1.jpg"
        book1.publisher = "북라이프"
        book1.writer = "박종인"
        book1.url = "http://www.kyobobook.co.kr/product/detailViewKor.laf?ejkGb=KOR&mallGb=KOR&barcode=9791185459455&orderClick=LAH&Kc="
        book1.description = "모든 장르에 통하는 강력한 글쓰기 원칙! \r\n『기자의 글쓰기』는 2014년부터 현재까지 조선일보 저널리즘 아카데미에서 진행되고 있는 조선일보 박종인 기자의 글쓰기 강연을 토대로 강연에서 못 다한 노하우까지 담아낸 책이다. 연령도 직업도 다양한 글쓰기 수강생들로부터 직접 받은 질문에 대한 답들을 정리했고, 실제 과제로 진행했던 글들의 첨삭 과정을 고스란히 담아냈다.\r\n저자는 글을 쓰기에 앞서 먼저 세 가지만 기억할 것을 주문한다. 쉽게, 짧게, 그럴듯하게. 이후 실제 저자가 신문에 쓴 취재 기사를 예로 들며 방향성 잡기에서부터 퇴고 과정까지 소개한다. 다음은 리듬 있는 문장을 짓는 법에 대해 이야기하고, 일반 수강생들의 글을 실어 독자들이 더욱 쉽게 자신의 글을 돌아보며 이해할 수 있도록 했다. \r\n그 외 우리가 남발하는 상투적 표현, ‘너무’, ‘매우’, ‘정말’과 같은 부사, 접속사와 수식어의 적절한 활용법, 첫 문장만큼 중요한 끝 문장 짓는 법 등에 대해 설명한다. 부록으로는 최근 5년간 새롭게 표준어가 된 단어들을 실었다. 그동안 실제로 적용하기에는 너무 거리가 멀었던 글쓰기 방법에 지쳤다면 이 책이 속 시원한 해결이 될 것이다."
        
        let book2 = Book()
        book2.title = "표현의 기술"
        book2.date = "2016.06.08"
        book2.coverImage = "book2.jpg"
        book2.publisher = "생각의 길"
        book2.writer = "유시민"
        book2.url = "http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9788965133759"
        book2.description = "표현의 귀재 유시민, 그가 말하는 표현의 기술! \r\n『표현의 기술』은 유시민이 평소 온오프라인을 통해 독자들과 주고받았던 말을 정리하고 보탠 책이다. 표현하고자 하는 바를 표현하고 그것을 상대가 공감하게 만드는 일은 꽤나 정교한 ‘기술’을 요한다. 대한민국 대표 작가 유시민은 글쓰기뿐만 아니라 말하기, 토론하기, 안티 대응 등, 표현을 잘 할 수 있는 모든 궁금증에 대해, 그만의 ‘표현의 기밀’을 아낌없이 전수한다.\r\n여기에 《씨네 21》에서 20여 년간 만화를 연재한 ‘그림쟁이 정훈이’가 함께하여 더욱 독특한 시너지를 보여준다. 어디에서도 공개하지 않았던 만화가 특유의 위트 있고 진솔한 삶의 여정을 통해 정훈이만의 ‘표현의 기술’을 들여다 볼 수 있다. 각자의 자리에서 대표 작가로 인정받은 그들은 표현하는 내용도, 방식도, 기술도 다르지만 ‘표현의 기술’은 서로 통한다는 것을 알 수 있다."
        
        let book3 = Book()
        book3.title = "포기하는 힘"
        book3.date = "2016.06.03"
        book3.coverImage = "book3.jpg"
        book3.publisher = "브레인 스토어"
        book3.writer = "권기헌"
        book3.url = "http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9788994194868&orderClick=4bb"
        book3.description = "처절한 노력중독사회를 향한 일침! \r\n『포기하는 힘』은 팍팍한 현실을 사는 한국인들에게 노력중독의 굴레에서 벗어나 진정한 행복이 무엇인지 찾을 수 있는 비결로 ‘포기’를 말하고자 하는 책이다. 무슨 일이 있어도 포기하지 말라고, 힘들어도 끈질기게 버티다 보면 좋은 날이 올 것이라는 수많은 자기계발서를 뒤로하고 포기해도 되는 것들을 포기함으로써 우리의 인생은 보다 자유로워지며 진정으로 중요한 가치가 무엇인지 똑바로 볼 수 있게 된다고 이야기한다. 책에서는 건강한 노력과 잘못된 노력을 판별하고 지혜롭게 포기하는 방법들을 소개한다.\r\n큰 꿈에 도전하는 사람들 중에는 성공하는 이보다 그렇지 못한 이들이 훨씬 많을 수밖에 없는 것이 현실이다. 그렇다면 성공한 사람들의 노력을 예찬만 할 것이 아니라 소위 실패한 사람들이 절망하지 않고 모두가 행복할 수 있는 방법을 찾는 것이 더욱 중요하지 않을까. 책은 맹목적인 노력중독에 빠져 있는 현대인들에게 포기의 중요성을 역설하고 포기하는 것이 결코 비겁하거나 부끄러운 것이 아님을 강조한다. 그리고 포기 그 자체로 끝나 버리는 것이 아니라 또 다른 시작을 향해 연결될 수 있도록 노력해야 말하고 있다."
        
        books.append(book1)
        books.append(book2)
        books.append(book3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return books.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("bookcell", forIndexPath: indexPath) as! BookTableViewCell

        // Configure the cell...

        let row = books[indexPath.row]
//        cell.textLabel?.text = row.title
//        cell.detailTextLabel?.text = row.writer
//        cell.imageView?.image = UIImage(named: row.coverImage!)
        cell.bookCover.image = UIImage(named: row.coverImage!)
        cell.bookTitle.text = row.title
        cell.bookWriter.text = row.writer
        cell.bookPublisher.text = row.publisher
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) { // sender는 선택된 cell
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "book_detail" {  // cell을 선택했을 때만 처리되도록... 다른 버튼으로 이루어져 타 View를 부르는 경우 구분할 수 있다.
            let detailVC = segue.destinationViewController as? DetailViewController
            let bookIndex = self.tableView.indexPathForCell(sender as! UITableViewCell) // 선택된 cell의 IndexPath를 반환
        
            detailVC?.book = books[bookIndex!.row]
        }
        
        
    }

}

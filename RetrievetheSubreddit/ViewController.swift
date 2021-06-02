//
//  ViewController.swift
//  RetrievetheSubreddit
//
//  Created by Daniel Washington Ignacio on 02/06/21.
//


/*
 Create a function to extract the name of the subreddit from its URL.

 Examples

 subReddit("https://www.reddit.com/r/funny/") ➞ "funny"

 subReddit("https://www.reddit.com/r/relationships/") ➞ "relationships"

 subReddit("https://www.reddit.com/r/mildlyinteresting/") ➞ "mildlyinteresting"
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //print(self.subReddit("https://www.reddit.com/r/funny/"))
        //print(self.subReddit("https://www.reddit.com/r/relationships/"))
        print(self.subReddit("https://www.reddit.com/r/mildlyinteresting/"))
    }

    func subReddit(_ link: String) -> String {
        var last: [String] = []
        last = link.components(separatedBy: "/")
        last.removeLast()
        return (last.last ?? "")
    }

}


//
//  FeedViewController.swift
//  TMobile_CodeChallenge
//
//  Created by MKenny on 3/17/21.
//

import UIKit

class FeedViewController: UITableViewController {
    
    var postViewModel = [PostViewModel]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: PostTableViewCell.identifier)
        PostViewModel.fetchFeed(viewModel: &postViewModel)
        self.tableView.estimatedRowHeight = 200
        self.tableView.rowHeight = UITableView.automaticDimension
    }
    
}

/*
 http://www.reddit.com/.json
 http://www.reddit.com/.json?after= + afterLink
 
 - image
 - title
 - comment number
 - score.api
 
 */

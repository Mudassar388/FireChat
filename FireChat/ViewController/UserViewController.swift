//
//  UserViewController.swift
//  FireChat
//
//  Created by Developer on 01/09/2023.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class UserViewController: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    
    var users = [User]()
    let db = Firestore.firestore()



    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchUsers()
        tblView.delegate = self
        tblView.dataSource = self
        tblView.register(UINib(nibName: "UserTableViewCell", bundle: nil), forCellReuseIdentifier: "UserTableViewCell")
    }
    
    func fetchUsers() {
        db.collection("users").getDocuments { (querySnapshot, error) in
            if let error = error {
                print("Error fetching users: \(error)")
                return
            }
            
            guard let documents = querySnapshot?.documents else {
                print("No users found")
                return
            }
            
            for document in documents {
                if let uid = document["uid"] as? String,
                   let username = document["username"] as? String {
                    let user = User(uid: uid, username: username)
                    self.users.append(user)
                    DispatchQueue.main.async {
                        self.tblView.reloadData()
                    }
                }
            }
            
            // Update your UI with the fetched user data (e.g., populate a table view)
            // Reload your table view or collection view with the 'users' array
        }
    }



}
extension UserViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell") as! UserTableViewCell
        let cellData = users[indexPath.row]
        cell.lblUser.text = cellData.username
        return cell
    }
    
    
}

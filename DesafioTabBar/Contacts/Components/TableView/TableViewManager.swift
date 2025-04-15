import UIKit


extension ContactsViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let result = tableView.dequeueReusableCell(withIdentifier: AppTableViewCell.identifier) as? AppTableViewCell {
            
            result.setup(self.users[indexPath.row])
            
            return result
        }else{
            return UITableViewCell()
        }
        
    }
    
    
    
}

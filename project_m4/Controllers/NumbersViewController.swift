
import UIKit

class NumbersViewController: UIViewController {
    
    private let tableView = UITableView()
    private var contacts: [Contact] = []
    
    private let cellID = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "My contacts"
        
        initUI()
        initData()
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    
    
    private func initUI() {
        
        view.backgroundColor = .white
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.center = view.center
        let height = UIScreen.main.bounds.height
        let wigth = UIScreen.main.bounds.width
        tableView.heightAnchor.constraint(equalToConstant: height - 40).isActive = true
        tableView.widthAnchor.constraint(equalToConstant: wigth).isActive = true
        //tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        tableView.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
        tableView.separatorColor = .clear
    }
    
    private func initData() {
        contacts = [Contact(image: "star", name: "Jane Cooper", phoneNumber: "(270) 555-0117"),
                    Contact(image: "house", name: "Devon Lane", phoneNumber: "(308) 555-0121"),
                    Contact(image: "car", name: "Darrell Steward", phoneNumber: "(684) 555-0102"),
                    Contact(image: "person", name: "Devon Lane", phoneNumber: "(704) 555-0127"),
                    Contact(image: "circle", name: "Courtney Henry", phoneNumber: "(505) 555-0125"),
                    Contact(image: "trash", name: "Wade Warren", phoneNumber: "(225) 555-0118"),
                    Contact(image: "square", name: "Bessie Cooper", phoneNumber: "(406) 555-0120"),
                    Contact(image: "fish", name: "Robert Fox", phoneNumber: "(480) 555-0103"),
                    Contact(image: "rectangle", name: "Jacob Jones", phoneNumber: "(702) 555-0122")]
    }
    
}
extension NumbersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //template cell
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = contacts[indexPath.row].name
        cell.detailTextLabel?.text = contacts[indexPath.row].phoneNumber
        cell.imageView?.image = UIImage(systemName: contacts[indexPath.row].image)
        return cell
        
        //dequeueReusableCell
//        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
//        cell.textLabel?.text = contacts[indexPath.row].name
//        return cell
    }
    
    
}

struct Contact {
    var image: String
    var name: String
    var phoneNumber: String
}

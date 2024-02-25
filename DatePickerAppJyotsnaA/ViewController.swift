import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    let dateFormatter: DateFormatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .long; dateFormatter.timeStyle = .long
        
    }
    func showAlert(dateTime: String) {
        let alert = UIAlertController(title: "Selected Date and time", message: "\(dateTime)", preferredStyle: .alert)
        
        // Add an action (button) to the alert
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        // Present the alert to the user
        present(alert, animated: true, completion: nil)
    }

   
    
    @IBAction func getCurrentDateTime(_ sender: UIButton) {
        let selectedDate: String = dateFormatter.string(from: myDatePicker.date)
        showAlert(dateTime: selectedDate)
    }
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
    let selecteddate: String = dateFormatter.string(from: sender.date)
        showAlert(dateTime: selecteddate)
    }
    
}


import UIKit

final class ViewController: UIViewController {
    @IBOutlet private var alarmClock: UILabel!
    @IBOutlet private var viewAfterAlarmClock: UIView!
    @IBOutlet private var volumeLevel: UILabel!
    @IBOutlet private var progressView: UIProgressView!
    @IBOutlet private var slider: UISlider!
    @IBOutlet private var textFieldSlider: UITextField!
    @IBOutlet private var viewAfterSlider: UIView!
    @IBOutlet private var datePicker: UIDatePicker!
    @IBOutlet private var setBtn: UIButton!
    @IBOutlet private var viewAfterSetBtn: UIView!
    @IBOutlet private var selectTime: UILabel!
    @IBOutlet private var switchBeforeClear: UISwitch!
    @IBOutlet private var clearBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldSlider.text = "0.5"
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        progressView.progress = sender.value
        textFieldSlider.text = String(format: "%.2f", sender.value)
    }
    
    @IBAction func textFieldAction(_ sender: UITextField) {
        if let value = sender.text, let floatValue = Float(value) {
            do {
                try updateProgress(with: floatValue)
            } catch {
                print("Error: \(error)")
            }
        }
    }

    private func updateProgress(with value: Float) throws {
        guard value >= 0 && value <= 1 else {
            throw ValidationError.invalidValue
        }
        progressView.progress = value
        slider.value = value
    }

    enum ValidationError: Error {
        case invalidValue
    }
    
    @IBAction func datePickerAction(_ sender: UIDatePicker) {}
    
    @IBAction func setBtnAction(_ sender: UIButton) {
        selectTime.alpha = 1
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        let timeString = dateFormatter.string(from: datePicker.date)
        selectTime.text = timeString
    }
   
    @IBAction func switchAction(_ sender: UISwitch) {
        selectTime.backgroundColor = sender.isOn ? .green : .red
    }

    @IBAction func clearBtnAction(_ sender: UIButton) {
        selectTime.text = ""
        switchBeforeClear.isOn = false
    }
}

import UIKit
//- 1 блок. При перетягивании слайдера меняется значение у Progress View и TextField
//При внесении изменений в TextField с помощью клавиатуры - меняем значения у Progress View и Slider
//- 2 блок. Date Picker (Выставить в настойках наш формат, и только часы и минуты). По нажатии на кнопку (Set this time) установить выбранное время в  Label  (11:14) (следующий блок) из Date Picker
//- 3 блок. Switch отвечает за включение будильника. Ври включении и выключении Switch менять цветовую гамму у  Label (11:14). При нажатии Button (Clear) очищать Label (“”) и выключать Switch

final class ViewController: UIViewController {
    
    
    @IBOutlet private weak var alarmClock: UILabel!
    @IBOutlet private weak var viewAfterAlarmClock: UIView!
    @IBOutlet private weak var volumeLevel: UILabel!
    @IBOutlet private weak var progressView: UIProgressView!
    @IBOutlet private weak var slider: UISlider!
    @IBOutlet private weak var textFieldSlider: UITextField!
    @IBOutlet private weak var viewAfterSlider: UIView!
    @IBOutlet private weak var datePicker: UIDatePicker!
    @IBOutlet private weak var setBtn: UIButton!
    @IBOutlet private weak var viewAfterSetBtn: UIView!
    @IBOutlet private weak var selectTime: UILabel!
    @IBOutlet private weak var switchBeforeClear: UISwitch!
    @IBOutlet private weak var clearBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}


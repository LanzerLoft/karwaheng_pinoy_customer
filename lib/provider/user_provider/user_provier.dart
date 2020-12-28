import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:timeline_tile/timeline_tile.dart';

class UserProvider with ChangeNotifier {
  //STRINGS PABILI PAGE
  String _dropOff;
  String _address;
  String _landMark;
  String _itemDescription;
  String _instruction;
  String _contactPerson;
  String _phoneNumber;
  bool _cashOnDelivey = false;
  int _count = 1;
  bool _showpassword = false;
  bool _deliverySelected = false;
  bool _professionalismSelected = false;
  bool _hygieneSelected = false;
  bool _communicationSelected = false;
  bool _unwantedSelected = false;
  bool _preferredSelected = false;

  List<Widget> _children = [];
  List<Widget> _addnotes = [];
  List<Widget> _addMerchants = [];

  List<Widget> get addTextfields {
    return _children;
  }

  List<Widget> get addNote {
    return _addnotes;
  }

  List<Widget> get addMerchant {
    return _addMerchants;
  }

  //
  //
  //
  // NOTIFICATIONS AND SOUND PAGE
  bool _gcashCheckbox = false;
  bool _payMayaCheckbox = false;
  //
  //
  //
  // GETTERS PABILI PAGE
  bool get gcashCheckbox => _gcashCheckbox;
  bool get payMayaCheckbox => _payMayaCheckbox;
  //
  //
  //
  // NOTIFICATIONS AND SOUND PAGE
  bool _customSwitchVibrate = false;
  bool _customSwitchSound = false;

  //
  //
  //
  // GETTERS PABILI PAGE
  String get dropOff => _dropOff;
  String get address => _address;
  String get landMark => _landMark;
  String get iemDescription => _itemDescription;
  String get instruction => _instruction;
  String get contactPerson => _contactPerson;
  String get phoneNumber => _phoneNumber;
  bool get cashOnDelivery => _cashOnDelivey;
  bool get showpassword => _showpassword;

  //
  bool get deliverySelected => _deliverySelected;
  bool get professionalismSelected => _professionalismSelected;
  bool get hygieneSelected => _hygieneSelected;
  bool get communicationSelected => _communicationSelected;
  bool get unwantedSelected => _unwantedSelected;
  bool get preferredSelected => _preferredSelected;
  //
  //
  //
  // GETTERS NOTIFICATIONS AND SOUND PAGE
  bool get customSwitchvibrate => _customSwitchVibrate;
  bool get customSwitchsound => _customSwitchSound;

  //SETTERS PABILI PAGE >>

  setDeliverySelected() {
    _deliverySelected = _deliverySelected;
    notifyListeners();
  }

  setCashOnDelivery() {
    _cashOnDelivey = !_cashOnDelivey;
  }

  setDropOff(String value) {
    _dropOff = value;
    notifyListeners();
  }

  setAddress(String value) {
    _address = value;
    notifyListeners();
  }

  setLandMark(String value) {
    _landMark = value;
    notifyListeners();
  }

  setItemDescription(String value) {
    _itemDescription = value;
    notifyListeners();
  }

  setInstruction(String value) {
    _instruction = value;
    notifyListeners();
  }

  setContactPerson(String value) {
    _contactPerson = value;
    notifyListeners();
  }

  setPhoneNumber(String value) {
    _phoneNumber = value;
    notifyListeners();
  }

// << SETTERS PABILI PAGE

  void addMerchants() {
    _addMerchants = List.from(_addMerchants)
      ..add(
        Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      child: Text("Order"),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      decoration: BoxDecoration(
                          color: Pallete.kpYellow,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Container(
                      width: 85,
                      height: 35,
                      child: TextFormField(
                        enableSuggestions: true,
                        style: TextStyle(color: Pallete.kpBlue),
                        onChanged: (value) {},
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Text("Merchant"),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      decoration: BoxDecoration(
                          color: Pallete.kpYellow,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Container(
                      width: 85,
                      height: 35,
                      child: TextFormField(
                        enableSuggestions: true,
                        style: TextStyle(color: Pallete.kpBlue),
                        onChanged: (value) {},
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Text("Price"),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      decoration: BoxDecoration(
                          color: Pallete.kpYellow,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Container(
                      width: 85,
                      height: 35,
                      child: TextFormField(
                        enableSuggestions: true,
                        style: TextStyle(color: Pallete.kpBlue),
                        onChanged: (value) {},
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),
                      ),
                    ),
                  ],
                ),
                // flatButtonIcon(Icon(Icons.remove_circle), "", () {
                //   setState(() {
                //     _addMerchants.removeAt(1);
                //   });
                // })
              ],
            ),
          ),
        ),
      );
    setState(() => ++_count);
    notifyListeners();
  }

  void addNotes() {
    _addnotes = List.from(_addnotes)
      ..add(
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: customTextField((value) {}, "Notes Here"),
        ),
      );
    setState(() => ++_count);
    notifyListeners();
  }

  void addTextfield() {
    _children = List.from(_children)
      ..add(
        TimelineTile(
          axis: TimelineAxis.vertical,
          alignment: TimelineAlign.start,
          afterLineStyle: LineStyle(color: Pallete.kpBlue),
          beforeLineStyle: LineStyle(color: Pallete.kpBlue),
          lineXY: 0.06,
          indicatorStyle: IndicatorStyle(
            color: Pallete.kpBlue,
            iconStyle: IconStyle(
                fontSize: 15, color: Pallete.kpWhite, iconData: Icons.circle),
          ),
          endChild: Container(
            child: Padding(
              padding: EdgeInsets.only(top: 15, left: 10),
              child: customTextFieldiCon(
                (value) {},
                "Search Location",
                "Search Location",
                IconButton(
                    icon: Icon(
                      Icons.add_circle,
                      color: Pallete.kpGrey,
                    ),
                    onPressed: () {
                      removeTextField();
                    }),
                () {},
              ),
            ),
          ),
        ),
      );
    setState(() => ++_count);
    notifyListeners();
  }

  void cashOnDeliverys() {
    if (_cashOnDelivey == false) {
      setState(() {
        _cashOnDelivey = true;
      });
    } else if (_cashOnDelivey == true) {
      setState(() {
        _cashOnDelivey = false;
      });
    }
    notifyListeners();
  }

  void removeTextField() {
    _children = List.from(_children);

    setState(() => --_count);
    notifyListeners();
  }

// CHECKBOX PABILI
  void checkboxGCASH() {
    _gcashCheckbox = !_gcashCheckbox;

    print(_gcashCheckbox);
    notifyListeners();
  }

  void checkboxPAYMAYA() {
    _payMayaCheckbox = !_payMayaCheckbox;

    print(_payMayaCheckbox);
    notifyListeners();
  }

// Rating Chips
  void selectedDeliveryTime() {
    _deliverySelected = !_deliverySelected;

    print(_deliverySelected);
    notifyListeners();
  }

  void selectedProfessionalism() {
    _professionalismSelected = !_professionalismSelected;

    print(_professionalismSelected);
    notifyListeners();
  }

  void selectedhygiene() {
    _hygieneSelected = !_hygieneSelected;

    print(_hygieneSelected);
    notifyListeners();
  }

  void selectedCommunication() {
    _communicationSelected = !_communicationSelected;

    print(_communicationSelected);
    notifyListeners();
  }

  void selecteUnwanted() {
    _unwantedSelected = !_unwantedSelected;

    print(_communicationSelected);
    notifyListeners();
  }

  void selectedPreferred() {
    _preferredSelected = !_preferredSelected;

    print(_communicationSelected);
    notifyListeners();
  }

//PASSCODEICON
  void passcodeIcon() {
    _showpassword = !_showpassword;

    print("hello TEST");
    notifyListeners();
  }

  //NOTIFICATIONS AND SOUND >> SWITCH
  void customSwitchVibrate() {
    _customSwitchVibrate = !_customSwitchVibrate;

    print("_customSwitch");
    notifyListeners();
  }

  void customSwitchSound() {
    _customSwitchSound = !_customSwitchSound;

    print("_customSwitch");
    notifyListeners();
  }

  // TEXT FIELD VALIDATION USER
  final passwordValidation = ValidationBuilder().maxLength(6).build();
  final userPhoneValidation = ValidationBuilder()
      .or(
        (builder) => builder.minLength(6),
        (builder) => builder.minLength(11).phone('not phone'),
        reverse: false,
      )
      .build();
}

import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/user_merchantSearch.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_pahatidDropOffInfo%20.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_pahatidSearchAddress.dart';
import 'package:provider/provider.dart';
import 'package:timelines/timelines.dart';
import 'package:sizer/sizer.dart';
import 'dart:math';

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
  List<Widget> _addOrders = [];
  List<Widget> get addOrder {
    return _addOrders;
  }

  List<Widget> _addOrders2 = [];
  List<Widget> get addOrder2 {
    return _addOrders2;
  }

  String _order;
  String _merchant;
  String _price;
  String _itemcount;
  String _order2;
  String _merchant2;
  String _price2;
  String _itemcount2;
  String _specificNote;
  String get pabiliOrder => _order;
  String get pabiliMerchant => _merchant;
  String get pabiliPrice => _price;
  String get pabiliitemCount => _itemcount;
  String get pabiliOrder2 => _order2;
  String get pabiliMerchant2 => _merchant2;
  String get pabiliPrice2 => _price2;
  String get pabiliitemCount2 => _itemcount2;
  String get pabiliNote => _specificNote;

//
  //add merchant 1 >>

  setOrder(String value) {
    _order = value;
    notifyListeners();
  }

  setMerchant(String value) {
    _merchant = value;
    notifyListeners();
  }

  setPrice(String value) {
    _price = value;
    notifyListeners();
  }

  setItemCount(String value) {
    _itemcount = value;
    notifyListeners();
  }

  //
  //
  //add merchant 2
  setOrder2(String value) {
    _order2 = value;
    notifyListeners();
  }

  setMerchant2(String value) {
    _merchant2 = value;
    notifyListeners();
  }

  setPrice2(String value) {
    _price2 = value;
    notifyListeners();
  }

  setItemCount2(String value) {
    _itemcount2 = value;
    notifyListeners();
  }

  //
  //
  //
  void addOrderNow(
    BuildContext context,
  ) {
    if (_merchant == null &&
        _order == null &&
        _price == null &&
        _itemcount == null) {
      final snackbar = SnackBar(
        content: Text('Please input your order details'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      print("NO MERCHANT");
    } else {
      _addOrders = List.from(_addOrders)
        ..add(
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  constraints: BoxConstraints(maxHeight: 100, maxWidth: 25.0.w),
                  child: Text(_addOrders.length.toString()),
                ),
                Container(
                  constraints: BoxConstraints(maxHeight: 100, maxWidth: 25.0.w),
                  child: Text(
                    pabiliMerchant.toString(),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxHeight: 100, maxWidth: 25.0.w),
                  child: Text(
                    pabiliOrder.toString(),
                  ),
                ),
                Text(
                  "x${pabiliitemCount.toString()}",
                ),
                Text(
                  pabiliPrice.toString(),
                ),
                GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.remove_circle_outline,
                      color: Pallete.kpRed,
                    ))
              ],
            ),
          ),
        );
      setState(() => ++_count);
      print("${_addOrders.length}");
      notifyListeners();
    }
  }

  void addOrderNow2(
    BuildContext context,
  ) {
    if (_merchant2 == null &&
        _order2 == null &&
        _price2 == null &&
        _itemcount2 == null) {
      final snackbar = SnackBar(
        content: Text('Please input your order detailssss'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      print("NO MERCHANT 2");
    } else {
      _addOrders2 = List.from(_addOrders2)
        ..add(
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  constraints: BoxConstraints(maxHeight: 100, maxWidth: 25.0.w),
                  child: Text(_addOrders2.length.toString()),
                ),
                Container(
                  constraints: BoxConstraints(maxHeight: 100, maxWidth: 25.0.w),
                  child: Text(
                    pabiliMerchant2.toString(),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxHeight: 100, maxWidth: 25.0.w),
                  child: Text(
                    pabiliOrder2.toString(),
                  ),
                ),
                Text(
                  "x${pabiliitemCount2.toString()}",
                ),
                Text(
                  pabiliPrice2.toString(),
                ),
                GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.remove_circle_outline,
                      color: Pallete.kpRed,
                    ))
              ],
            ),
          ),
        );
      setState(() => ++_count);
      print("${_addOrders2.length}");
      notifyListeners();
    }
  }

  List<String> listCategory = [
    "Inquiry",
    "Report a Problem",
    "Suggestion",
    "Other",
  ];

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
  // ONE WAY - ROUROUNDTRIP
  bool _oneWay = true;
  bool _roundTrip = false;

  // ONE WAY - ROUROUNDTRIP
  bool get roundTrip => _roundTrip;
  bool get oneWay => _oneWay;

  void selectedRoundTrip() {
    _roundTrip = true;
    _oneWay = false;
    print("ROUND TRIP CLICKED");
    notifyListeners();
  }

  void selectedOneWay() {
    _oneWay = true;
    _roundTrip = false;
    print("ONE WAY CLICKED");
    notifyListeners();
  }

//
  ///
/////

  //
  //
  // Home-work-recent colors
  bool _home = false;
  bool _work = false;
  bool _recent = false;

  // Home-work-recent colors
  bool get homeColor => _home;
  bool get workColor => _work;
  bool get recentColor => _recent;

  void homeColorOntap() {
    _home = !_home;
    _work = false;
    _recent = false;
    print("Home $_home");
    notifyListeners();
  }

  void workColorOntap() {
    _work = !_work;
    _home = false;
    _recent = false;
    print("Work $_work");
    notifyListeners();
  }

  void recentColorOntap() {
    _recent = !_recent;
    _work = false;
    _home = false;
    print("Recent $_recent");
    notifyListeners();
  }

  //
  //
  // ADDITIONAL SERVICES
  bool _insulatedBox = false;
  bool _queingService = false;
  bool _cashHandling = false;

  // ADDITIONAL SERVICES
  bool get insulatedBox => _insulatedBox;
  bool get queingService => _queingService;
  bool get cashHandling => _cashHandling;

//PABILI PAYMENT
  bool _pabilikpWallet = false;
  bool _gcashPabiliPayment = false;
  bool _payMayaPabiliPayment = false;
  bool _pabiliCODpayment = false;

  bool get pabiliCODPayment => _pabiliCODpayment;
  bool get pabilikpWallet => _pabilikpWallet;
  bool get gCashPabiliPayment => _gcashPabiliPayment;
  bool get payMayaPabiliPayment => _payMayaPabiliPayment;

  //
  //
  // Booking payment options off
  void paymentReset() {
    _pabiliCODpayment = false;
    _pabilikpWallet = false;
    _gcashPabiliPayment = false;
    _payMayaPabiliPayment = false;
    _pahatidCODpayment = false;
    _pahatidkpWallet = false;
    _gcashPahatidPayment = false;
    _payMayaPahatidPayment = false;
    notifyListeners();
  }

  void selectedPabiliKpWallet() {
    _pabilikpWallet = !_pabilikpWallet;

    print(_pabilikpWallet);
    notifyListeners();
  }

  void selectedGCashPabiliPayment() {
    _gcashPabiliPayment = !_gcashPabiliPayment;

    print(_gcashPabiliPayment);
    notifyListeners();
  }

  void selectedPayMayaPabiliPayment() {
    _payMayaPabiliPayment = !_payMayaPabiliPayment;

    print(_payMayaPabiliPayment);
    notifyListeners();
  }

  void checkboxPabiliCOD() {
    _pabiliCODpayment = !_pabiliCODpayment;

    print(_pabiliCODpayment);
    notifyListeners();
  }

  //PAHATID PAYMENT
  bool _pahatidkpWallet = false;
  bool _gcashPahatidPayment = false;
  bool _payMayaPahatidPayment = false;
  bool _pahatidCODpayment = false;
  bool _pahatidCOPpayment = false;

  bool get pahatidCOPPayment => _pahatidCOPpayment;
  bool get pahatidCODPayment => _pahatidCODpayment;
  bool get pahatidkpWallet => _pahatidkpWallet;
  bool get gCashPahatidPayment => _gcashPahatidPayment;
  bool get payMayaPahatidPayment => _payMayaPahatidPayment;

  void checkBoxPahatidCOP() {
    _pahatidCOPpayment = !_pahatidCOPpayment;

    print(_pahatidCOPpayment);
    notifyListeners();
  }

  void selectedPahatidKpWallet() {
    _pahatidkpWallet = !_pahatidkpWallet;

    print(_pahatidkpWallet);
    notifyListeners();
  }

  void selectedGCashPahatidPayment() {
    _gcashPahatidPayment = !_gcashPahatidPayment;

    print(_gcashPahatidPayment);
    notifyListeners();
  }

  void selectedPayMayaPahatidPayment() {
    _payMayaPahatidPayment = !_payMayaPahatidPayment;

    print(_payMayaPahatidPayment);
    notifyListeners();
  }

  void checkboxPahatidCOD() {
    _pahatidCODpayment = !_pahatidCODpayment;

    print(_pahatidCODpayment);
    notifyListeners();
  }

  //
  //
  //

  void checkBoxinsulatedBox() {
    _insulatedBox = !_insulatedBox;

    print(_insulatedBox);
    notifyListeners();
  }

  void checkBoxqueingService() {
    _queingService = !_queingService;

    print(_queingService);
    notifyListeners();
  }

  void checkBoxcashHandling() {
    _cashHandling = !_cashHandling;

    print(_insulatedBox);
    notifyListeners();
  }

  //
  //
  //
  // UPLOAD IMAGE PROFILE
  String _path;
  String get path => _path;

  final picker = ImagePicker();
  PickedFile images;

  Future getImgFromGallery() async {
    images = await picker.getImage(
      source: ImageSource.gallery,
    );

    if (images != null) {
      var imageUrl = images;
      print(imageUrl);
    } else {
      print("no path recieve");
    }
    notifyListeners();
  }

  Future getImgFromCamera() async {
    images = await picker.getImage(
      source: ImageSource.camera,
    );
    if (images != null) {
      var imageUrl = images;
      print(imageUrl);
    } else {
      print("no path recieve");
    }
    notifyListeners();
  }
  //
  //
  //
  // WALLET REWARDS

  int _tabLenght = 4;
  int get tabLenght => _tabLenght;
  tabLenghts() {
    _tabLenght = 2;
    notifyListeners();
  }

  //
  //
  //
  // WALLET TOP UP
  var ammount = TextEditingController();
  bool _php50pesos = false;
  bool _php100pesos = false;
  bool _php300pesos = false;
  bool _php500pesos = false;
  bool _php1000pesos = false;
  bool _php5000pesos = false;
  bool get btnphp50 => _php50pesos;
  bool get btnphp100 => _php100pesos;
  bool get btnphp300 => _php300pesos;
  bool get btnphp500 => _php500pesos;
  bool get btnphp1000 => _php1000pesos;
  bool get btnphp5000 => _php5000pesos;

  void phpOntap() {
    if (_php100pesos ||
        _php300pesos ||
        _php500pesos ||
        _php1000pesos ||
        _php5000pesos ||
        _php50pesos == true) {
      _php100pesos = false;
      _php300pesos = false;
      _php500pesos = false;
      _php1000pesos = false;
      _php5000pesos = false;
      _php50pesos = false;
    }

    ammount.text = "";
    print("clear");
    notifyListeners();
  }

  void cancelKPpayment() {
    _php50pesos = false;
    _php100pesos = false;
    _php300pesos = false;
    _php500pesos = false;
    _php1000pesos = false;
    _php5000pesos = false;
    ammount.text = "";

    notifyListeners();
  }

  void php50() {
    if (_php100pesos ||
        _php300pesos ||
        _php500pesos ||
        _php1000pesos ||
        _php5000pesos == true) {
      _php100pesos = false;
      _php300pesos = false;
      _php500pesos = false;
      _php1000pesos = false;
      _php5000pesos = false;
    }
    _php50pesos = !_php50pesos;

    if (_php50pesos == true) {
      ammount.text = "₱50";
    } else {
      ammount.text = "0.00";
    }
    print("php 50 $_php50pesos");
    notifyListeners();
  }

  void php100() {
    if (_php50pesos ||
        _php300pesos ||
        _php500pesos ||
        _php1000pesos ||
        _php5000pesos == true) {
      _php50pesos = false;
      _php300pesos = false;
      _php500pesos = false;
      _php1000pesos = false;
      _php5000pesos = false;
    }
    if (_php100pesos == false) {
      ammount.text = "₱100";
    } else {
      ammount.text = "0.00";
    }
    _php100pesos = !_php100pesos;
    // ammount.text = "100";
    print("php 100 $_php100pesos");
    notifyListeners();
  }

  void php300() {
    if (_php50pesos ||
        _php100pesos ||
        _php500pesos ||
        _php1000pesos ||
        _php5000pesos == true) {
      _php50pesos = false;
      _php100pesos = false;
      _php500pesos = false;
      _php1000pesos = false;
      _php5000pesos = false;
    }
    _php300pesos = !_php300pesos;

    if (_php300pesos == true) {
      ammount.text = "₱300";
    } else {
      ammount.text = "0.00";
    }
    print("php 300 $_php300pesos");
    notifyListeners();
  }

  void php500() {
    if (_php50pesos ||
        _php100pesos ||
        _php300pesos ||
        _php1000pesos ||
        _php5000pesos == true) {
      _php50pesos = false;
      _php100pesos = false;
      _php300pesos = false;
      _php1000pesos = false;
      _php5000pesos = false;
    }
    _php500pesos = !_php500pesos;
    if (_php500pesos == true) {
      ammount.text = "₱500";
    } else {
      ammount.text = "0.00";
    }
    print("php 500 $_php500pesos");
    notifyListeners();
  }

  void php1000() {
    if (_php50pesos ||
        _php100pesos ||
        _php300pesos ||
        _php500pesos ||
        _php5000pesos == true) {
      _php50pesos = false;
      _php100pesos = false;
      _php300pesos = false;
      _php500pesos = false;
      _php5000pesos = false;
    }
    _php1000pesos = !_php1000pesos;
    if (_php1000pesos == true) {
      ammount.text = "₱1,000";
    } else {
      ammount.text = "0.00";
    }
    print("php 1000 $_php1000pesos");

    notifyListeners();
  }

  void php5000() {
    if (_php50pesos ||
        _php100pesos ||
        _php300pesos ||
        _php500pesos ||
        _php1000pesos == true) {
      _php50pesos = false;
      _php100pesos = false;
      _php300pesos = false;
      _php500pesos = false;
      _php1000pesos = false;
    }
    _php5000pesos = !_php5000pesos;
    if (_php5000pesos == true) {
      ammount.text = "₱5,000";
    } else {
      ammount.text = "0.00";
    }
    print("php 5000 $_php5000pesos");

    notifyListeners();
  }

  //
  //
  //
  // PASSCODE REST VIA EMAIL AND PHONE
  bool _viaEmail = true;
  bool _viaPhone = true;
  bool get resetViaEmail => _viaEmail;
  bool get resetViaPhone => _viaPhone;

  void resetPassViaEmail() {
    _viaEmail = !_viaEmail;

    print(_viaEmail);
    notifyListeners();
  }

  void resetPassViaPhone() {
    _viaPhone = !_viaPhone;

    print(_viaPhone);
    notifyListeners();
  }

  //
  //
  //
  // PABILI TOTAL BILL EXPAND
  bool _totalBillExpand = true;

  bool get totalBillExpand => _totalBillExpand;
  //
  //
  //
  // NOTIFICATIONS AND SOUND PAGE
  bool _gcashCheckbox = false;
  bool _payMayaCheckbox = false;
  bool _gcashPahatidCheckbox = false;
  bool _payMayaPahatidCheckbox = false;
  //
  //
  //
  // GETTERS PABILI PAGE
  bool get gcashCheckbox => _gcashCheckbox;
  bool get payMayaCheckbox => _payMayaCheckbox;
  bool get gcashPahatidCheckbox => _gcashPahatidCheckbox;
  bool get payMayaPahatidCheckbox => _payMayaPahatidCheckbox;

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
  // NOTIFICATIONS AND SOUND PAGE
  bool _customSwitchVibrate = false;
  bool _customSwitchSound = false;
  //
  //
  //
  // GETTERS NOTIFICATIONS AND SOUND PAGE
  bool get customSwitchvibrate => _customSwitchVibrate;
  bool get customSwitchsound => _customSwitchSound;

  // NOTIFICATIONS AND SOUND PAGE
  bool _confirmGcashOrder = false;
  bool _confirmPayMayaOrder = false;
  // GETTERS NOTIFICATIONS AND SOUND PAGE
  bool get confirmGcashOrder => _confirmGcashOrder;
  bool get confirmPayMayaOrder => _confirmPayMayaOrder;
  //
  void checkConfirmGcashOrder() {
    _confirmGcashOrder = !_confirmGcashOrder;

    print(_confirmGcashOrder);
    notifyListeners();
  }

  void checkConfirmPaymayaOrder() {
    _confirmPayMayaOrder = !_confirmPayMayaOrder;

    print(_confirmPayMayaOrder);
    notifyListeners();
  }

  setDeliverySelected() {
    _deliverySelected = _deliverySelected;
    notifyListeners();
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

  //
  //
  //
  // EXPANSION TILE

  bool _anotherLocation = false;
  bool get anotherLocation => _anotherLocation;

  bool _expansiontileOne = true;
  bool _expansiontileTwo = true;
  bool get expansionTileOne => _expansiontileOne;
  bool get expansionTileTwo => _expansiontileTwo;

  void addAnotherLocation() {
    _anotherLocation = !_anotherLocation;

    print(_anotherLocation);
    notifyListeners();
  }

  void expansionTileLocation1() {
    _expansiontileOne = false;

    print(_expansiontileOne);
    notifyListeners();
  }

  void expansionTileLocation2() {
    _expansiontileTwo = !_expansiontileTwo;

    print(_expansiontileTwo);
    notifyListeners();
  }

// << SETTERS PABILI PAGE

  void addMerchants(BuildContext context) {
    TextEditingController merchant = TextEditingController();
    _addMerchants = List.from(_addMerchants, growable: true)
      ..add(
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: customCardPabili(
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                tilePadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                initiallyExpanded: true,
                maintainState: true,
                onExpansionChanged: (value) {},
                subtitle: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Merchant",
                    style: CustomTextStyle.textStyleGrey14,
                  ),
                ),
                title: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Order",
                          style: CustomTextStyle.textStyleBlue16,
                          overflow: totalBillExpand == true
                              ? TextOverflow.visible
                              : TextOverflow.visible,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/payment_icons/pesoicon.png"),
                          color: Pallete.kpBlue,
                          size: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          child: Text(
                            "0.00",
                            style: CustomTextStyle.textStyleBlue16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: customTextFieldMerchant((value) {}, () {
                      pageRoute(context, UserPabiliMerchantSearch());
                    }, "Merchant", merchant),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: customTextFieldOrder(
                      (value) {},
                      "Order",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: customTextFieldSpecNotes(
                        (value) {}, "Put specific notes here"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextFieldPrice((value) {}, "Price"),
                        customButton2(() {}, "Add", 5, 30.0.w, 45,
                            Pallete.kpBlue, Pallete.kpBlue),
                      ],
                    ),
                  ),
                ],
              ),
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
          child: customTextFieldNotes((value) {}, "Put specific notes here"),
        ),
      );
    setState(() => ++_count);
    notifyListeners();
  }

  void addTextfield(BuildContext context) {
    if (addTextfields.length <= 18) {
      _children = List.from(_children)
        ..add(
          TimelineTile(
            nodeAlign: TimelineNodeAlign.start,
            contents: Container(
              child: Padding(
                padding: EdgeInsets.only(top: 15, left: 10),
                child: customlocationTextField(
                  (value) {},
                  "Set Drop-Off Location",
                  "Set Drop-Off Location",
                  () {
                    pageRoute(context, UserPahatidDropInfo());
                  },
                  () {
                    print("REMOVE");
                  },
                ),
              ),
            ),
            node: TimelineNode(
              indicator: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.5),
                  child: OutlinedDotIndicator()),
              startConnector: DashedLineConnector(
                gap: 3,
                color: Pallete.kpGrey,
              ),
              endConnector: DashedLineConnector(
                gap: 3,
                color: Pallete.kpGrey,
              ),
            ),
          ),
        );
      setState(() => ++_count);
      notifyListeners();
      print("add Drop-Off Location No. ${addTextfields.length}");
    }
  }

  void maxLocation(BuildContext context) {
    final snackbar = SnackBar(
      content: Text('20 Max Drop-Off Location'),
    );

    if (addTextfields.length == 19) {
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
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

//
//
//
  void totalBillExpanded() {
    _totalBillExpand = !_totalBillExpand;

    print(_totalBillExpand);
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

  void checkboxPahatidGCASH() {
    _gcashPahatidCheckbox = !_gcashPahatidCheckbox;

    print(_gcashPahatidCheckbox);
    notifyListeners();
  }

  void checkboxPahatidPAYMAYA() {
    _payMayaPahatidCheckbox = !_payMayaPahatidCheckbox;

    print(_payMayaPahatidCheckbox);
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

    notifyListeners();
  }

  //NOTIFICATIONS AND SOUND >> SWITCH
  void customSwitchVibrate() {
    _customSwitchVibrate = !_customSwitchVibrate;

    print(_customSwitchVibrate);
    notifyListeners();
  }

  void customSwitchSound() {
    _customSwitchSound = !_customSwitchSound;

    print(_customSwitchSound);
    notifyListeners();
  }

  // TEXT FIELD VALIDATION USER
  final passwordValidation = ValidationBuilder().maxLength(4).build();
  final userPhoneValidation =
      ValidationBuilder().minLength(1, "This is a required field").build();
  final changeMobileNumberValidation = ValidationBuilder()
      .minLength(11, "The field must be 11 digits long")
      .phone()
      .build();
  final changeContactPersonValidation =
      ValidationBuilder().minLength(1, "This is a required field").build();
  final changeFullNameValidation =
      ValidationBuilder().minLength(1, "This is a required field").build();
  final changeEmailValidation = ValidationBuilder().email().build();
  final resetEmailValidation = ValidationBuilder().email().build();
  final resetPhoneValidation =
      ValidationBuilder().minLength(11).phone().build();
  final minimun = ValidationBuilder().minLength(2, "50 minimum Top Up").build();
  final itemCountPabili =
      ValidationBuilder().maxLength(2, "2 digits maximum").build();
}

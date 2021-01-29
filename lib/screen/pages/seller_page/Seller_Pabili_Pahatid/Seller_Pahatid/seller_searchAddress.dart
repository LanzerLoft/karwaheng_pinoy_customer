import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';

class SellerPahatidSearchAddress extends StatefulWidget {
  static final kInitialPosition = LatLng(14.847826, 120.412929);
  @override
  _SellerPahatidSearchAddressState createState() =>
      _SellerPahatidSearchAddressState();
}

class _SellerPahatidSearchAddressState extends State<SellerPahatidSearchAddress> {
  Widget build(BuildContext context) {
    final api_key = "AIzaSyAtx9iREz2xLT9q21lSAFcadmgAE5v43Bs";
    @override
    PickResult selectedPlace;
    return Scaffold(
      body: PlacePicker(
        apiKey: api_key,
        initialPosition: SellerPahatidSearchAddress.kInitialPosition,
        useCurrentLocation: true,
        selectInitialPosition: true,

        //usePlaceDetailSearch: true,
        onPlacePicked: (result) {
          selectedPlace = result;
          Navigator.of(context).pop();
          setState(() {});
        },
        forceSearchOnZoomChanged: true,
        automaticallyImplyAppBarLeading: false,
        autocompleteLanguage: "ko",
        region: 'au',

        selectedPlaceWidgetBuilder:
            (_, selectedPlace, state, isSearchBarFocused) {
          print("state: $state, isSearchBarFocused: $isSearchBarFocused");
          return isSearchBarFocused
              ? Container()
              : FloatingCard(
                  bottomPosition:
                      0.0, // MediaQuery.of(context) will cause rebuild. See MediaQuery document for the information.
                  leftPosition: 0.0,
                  rightPosition: 0.0,
                  width: 500,
                  borderRadius: BorderRadius.circular(12.0),
                  child: state == SearchingState.Searching
                      ? Center(child: CircularProgressIndicator())
                      : RaisedButton(
                          child: Text("Pick Here"),
                          onPressed: () {
                            // IMPORTANT: You MUST manage selectedPlace data yourself as using this build will not invoke onPlacePicker as
                            //            this will override default 'Select here' Button.
                            print("do something with [selectedPlace] data");
                            Navigator.of(context).pop();
                          },
                        ),
                );
        },
      ),
    );
  }
}

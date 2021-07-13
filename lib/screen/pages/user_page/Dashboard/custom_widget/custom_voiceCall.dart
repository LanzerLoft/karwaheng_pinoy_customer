import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/customer_pabili_provider.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/custom/user_drawer_icons.dart';
import 'package:provider/provider.dart';

class VoiceCallPage extends StatelessWidget {
  const VoiceCallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userPabiliProvider = Provider.of<UserPabiliProvider>(context);
    return Scaffold(
      backgroundColor: Pallete.bcGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Calling....",
                      style: CustomTextStyle.textStyleGrey16,
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Pallete.kpGrey, width: 4),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      UserDrawerIcons.myaccount,
                      color: Pallete.kpGrey,
                      size: 130,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      userPabiliProvider.recordvoicecallSwitch();
                    },
                    iconSize: 40,
                    icon: Icon(
                      Icons.voicemail_rounded,
                      color: userPabiliProvider.recordvoicecall == true
                          ? Pallete.kpGrey
                          : Pallete.kpGreyOkpGreypacity2,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      userPabiliProvider.loudSpeakerSwitch();
                    },
                    iconSize: 40,
                    icon: Icon(
                      Icons.volume_up,
                      color: userPabiliProvider.loudSpeaker == true
                          ? Pallete.kpGrey
                          : Pallete.kpGreyOkpGreypacity2,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      userPabiliProvider.mutecallSwitch();
                    },
                    iconSize: 40,
                    icon: Icon(
                      Icons.mic_off_rounded,
                      color: userPabiliProvider.muteSwitch == true
                          ? Pallete.kpGrey
                          : Pallete.kpGreyOkpGreypacity2,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Pallete.kpRed,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.call_end,
                      color: Pallete.kpWhite,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

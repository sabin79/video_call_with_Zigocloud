import 'dart:math';

import 'package:chat/constant/const.dart';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

final userId = Random().nextInt(99999);

class ZeGoScreen extends StatelessWidget {
  final String callId;

  const ZeGoScreen({super.key, required this.callId});

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: AppInfo.appId, // Replace with your actual AppID
      appSign: AppInfo.appSign, // Replace with your actual AppSign
      userID: userId.toString(),
      callID: callId,
      userName: "username : $userId",
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..bottomMenuBarConfig = ZegoBottomMenuBarConfig(
          buttons: [
            ZegoMenuBarButtonName.hangUpButton,
            ZegoMenuBarButtonName.toggleMicrophoneButton, // Mute button
            ZegoMenuBarButtonName.toggleCameraButton,
            ZegoMenuBarButtonName.switchCameraButton,

            // Call End button
          ],
        ),
    );
  }
}

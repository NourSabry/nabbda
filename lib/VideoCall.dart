// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:permission_handler/permission_handler.dart';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;

const appId = "ca004ee0f9004d7e972cacf7bbaf331c";
const token =
    "006ca004ee0f9004d7e972cacf7bbaf331cIAC/41dAWDHxx7qQSEjSELsgoYCo3RNnWJEwspUAKmTuILghsmwAAAAAEADJaQ2GBoCHYQEAAQAGgIdh";

class VideoCall extends StatefulWidget {
  @override
  _VideoCall createState() => _VideoCall();
}

class _VideoCall extends State<VideoCall> {
  int? _remoteUid;
  late RtcEngine _engine;

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  Future<void> initAgora() async {
    // retrieve permissions
    //  await [Permission.microphone, Permission.camera].request();
    //create the engine
    _engine = await RtcEngine.create("eea35a29e63640c58179685ee868a8d5");
    await _engine.enableVideo();
    _engine.setEventHandler(
      RtcEngineEventHandler(
        joinChannelSuccess: (String channel, int uid, int elapsed) {
          print("local user $uid joined");
        },
        userJoined: (int uid, int elapsed) {
          print("remote user $uid joined");
          setState(() {
            _remoteUid = uid;
          });
        },
        userOffline: (int uid, UserOfflineReason reason) {
          print("remote user $uid left channel");
          setState(() {
            _remoteUid = null;
          });
        },
      ),
    );

    await _engine.joinChannel(null, "firstchannel", null, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Color(0xFF2F2E41)))),
      body: Stack(
        children: [
          Center(
            child: _remoteVideo(),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 100,
              height: 100,
              child: Center(
                child: RtcLocalView.SurfaceView(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Display remote user's video
  Widget _remoteVideo() {
    if (_remoteUid != null) {
      return RtcRemoteView.SurfaceView(uid: _remoteUid!);
    } else {
      return Text(
        'Please wait for remote user to join',
        textAlign: TextAlign.center,
      );
    }
  }
}

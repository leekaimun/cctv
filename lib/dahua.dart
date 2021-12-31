import 'package:flutter/services.dart';

class DaHua {
  late MethodChannel platform;

  Future<String> init() async {
    String result;
    platform = const MethodChannel('com.sgct.cctv/netsdk');
    try {
      final String ret = await platform.invokeMethod('loadLibraries');
      result = ret;
    } on PlatformException catch (e) {
      result = "Failed: '${e.message}'.";
    }
    return result;
  }
}

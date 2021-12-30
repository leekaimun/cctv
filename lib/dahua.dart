import 'package:flutter/services.dart';

class DaHua {
  late MethodChannel platform;

  Future<void> init() async {
      platform = const MethodChannel('com.sgct.cctv/netsdk');
      try {
        
      }
  }
}
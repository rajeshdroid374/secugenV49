import 'dart:typed_data';

import 'models/image_capture_result.dart';
import 'secugen_v_4_9_plugin_platform_interface.dart';

class SecugenV49Plugin {
  Future<bool?> initializeDevice() {
    return SecugenV49PluginPlatform.instance.initializeDevice();
  }

  Future<void> enableLed(bool val) async {
    SecugenV49PluginPlatform.instance.enableLed(val);
  }

  Future<void> enableSmartCapture(bool val) async {
    SecugenV49PluginPlatform.instance.enableSmartCapture(val);
  }

  Future<void> setBrightness(int val) async {
    return SecugenV49PluginPlatform.instance.setBrightness(val);
  }

  Future<ImageCaptureResult?> captureFingerprint({bool auto = false}) async {
    return SecugenV49PluginPlatform.instance.captureFingerprint(auto);
  }

  Future<ImageCaptureResult?> captureFingerprintWithQuality(
      {required int timeout, required int quality, bool auto = false}) async {
    return SecugenV49PluginPlatform.instance
        .captureFingerprintWithQuality(timeout, quality, auto);
  }

  Future<bool?> verifyFingerprint(
      {required Uint8List firstBytes, required Uint8List secondBytes}) async {
    return SecugenV49PluginPlatform.instance
        .verifyFingerprint(firstBytes, secondBytes);
  }

  Future<int?> getMatchingScore(
      {required Uint8List firstBytes, required Uint8List secondBytes}) async {
    return SecugenV49PluginPlatform.instance
        .getMatchingScore(firstBytes, secondBytes);
  }
}

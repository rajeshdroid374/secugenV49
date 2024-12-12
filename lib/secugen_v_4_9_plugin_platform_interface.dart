import 'dart:typed_data';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'models/image_capture_result.dart';
import 'secugen_v_4_9_plugin_method_channel.dart';

abstract class SecugenV49PluginPlatform extends PlatformInterface {

  SecugenV49PluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static SecugenV49PluginPlatform _instance = MethodChannelSecugenV49Plugin();
  static SecugenV49PluginPlatform get instance => _instance;

  static set instance(SecugenV49PluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool?> initializeDevice() {
    throw UnimplementedError('initializeDevice() has not been implemented.');
  }
  Future<String?> deviceVersion() {
    throw UnimplementedError('deviceVersion() has not been implemented.');
  }

  Future<void> enableLed(bool val) {
    throw UnimplementedError('toggleLed() has not been implemented.');
  }

  Future<void> enableSmartCapture(bool val) {
    throw UnimplementedError('enableSmartCapture() has not been implemented.');
  }

  Future<void> setBrightness(int val) {
    throw UnimplementedError('setBrightness() has not been implemented.');
  }

  Future<ImageCaptureResult?> captureFingerprint(bool auto) {
    throw UnimplementedError('captureFingerprint() has not been implemented.');
  }

  Future<ImageCaptureResult?> captureFingerprintWithQuality(int timeout, int quality, bool auto) {
    throw UnimplementedError('captureFingerprintWithQuality() has not been implemented.');
  }

  Future<bool?> verifyFingerprint(Uint8List firstBytes, Uint8List secondBytes) {
    throw UnimplementedError('verifyFingerprint() has not been implemented.');
  }

  Future<int?> getMatchingScore(Uint8List firstBytes, Uint8List secondBytes) {
    throw UnimplementedError('getMatchingScore() has not been implemented.');
  }
}

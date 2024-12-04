import 'package:flutter_test/flutter_test.dart';
import 'package:secugen_v_4_9_plugin/secugen_v_4_9_plugin.dart';
import 'package:secugen_v_4_9_plugin/secugen_v_4_9_plugin_platform_interface.dart';
import 'package:secugen_v_4_9_plugin/secugen_v_4_9_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSecugenV49PluginPlatform
    with MockPlatformInterfaceMixin
    implements SecugenV49PluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SecugenV49PluginPlatform initialPlatform = SecugenV49PluginPlatform.instance;

  test('$MethodChannelSecugenV49Plugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSecugenV49Plugin>());
  });

  test('getPlatformVersion', () async {
    SecugenV49Plugin secugenV49Plugin = SecugenV49Plugin();
    MockSecugenV49PluginPlatform fakePlatform = MockSecugenV49PluginPlatform();
    SecugenV49PluginPlatform.instance = fakePlatform;

    expect(await secugenV49Plugin.getPlatformVersion(), '42');
  });
}

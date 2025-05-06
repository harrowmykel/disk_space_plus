import 'package:flutter_test/flutter_test.dart';
import 'package:disk_space_plus/disk_space_plus.dart';
import 'package:disk_space_plus/disk_space_plus_platform_interface.dart';
import 'package:disk_space_plus/disk_space_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDiskSpacePlusPlatform
    with MockPlatformInterfaceMixin
    implements DiskSpacePlusPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<double?> get getFreeDiskSpace => Future.value(20.0);

  @override
  Future<double?> getFreeDiskSpaceForPath(String path) => Future.value(30.0);

  @override
  Future<double?> get getTotalDiskSpace => Future.value(100.0);
}

void main() {
  final DiskSpacePlusPlatform initialPlatform = DiskSpacePlusPlatform.instance;

  test('$MethodChannelDiskSpacePlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDiskSpacePlus>());
  });

  test('getPlatformVersion', () async {
    MockDiskSpacePlusPlatform fakePlatform = MockDiskSpacePlusPlatform();
    DiskSpacePlusPlatform.instance = fakePlatform;

    expect(await DiskSpacePlus.getPlatformVersion(), '42');
  });

  test('getFreeDiskSpace', () async {
    MockDiskSpacePlusPlatform fakePlatform = MockDiskSpacePlusPlatform();
    DiskSpacePlusPlatform.instance = fakePlatform;

    expect(await DiskSpacePlus.getFreeDiskSpace, 20.0);
  });

  test('getFreeDiskSpaceForPath', () async {
    MockDiskSpacePlusPlatform fakePlatform = MockDiskSpacePlusPlatform();
    DiskSpacePlusPlatform.instance = fakePlatform;

    expect(await DiskSpacePlus.getFreeDiskSpaceForPath('/'), 30.0);
  });

  test('getTotalDiskSpace', () async {
    MockDiskSpacePlusPlatform fakePlatform = MockDiskSpacePlusPlatform();
    DiskSpacePlusPlatform.instance = fakePlatform;

    expect(await DiskSpacePlus.getTotalDiskSpace, 100.0);
  });
}

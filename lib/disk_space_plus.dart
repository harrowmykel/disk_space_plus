// You have generated a new plugin project without specifying the `--platforms`
// flag. A plugin project with no platform support was generated. To add a
// platform, run `flutter create -t plugin --platforms <platforms> .` under the
// same directory. You can also find a detailed instruction on how to add
// platforms in the `pubspec.yaml` at
// https://flutter.dev/to/pubspec-plugin-platforms.

import 'disk_space_plus_platform_interface.dart';

class DiskSpacePlus {
  Future<String?> getPlatformVersion() {
    return DiskSpacePlusPlatform.instance.getPlatformVersion();
  }

  Future<double?> get getFreeDiskSpace async {
    return DiskSpacePlusPlatform.instance.getFreeDiskSpace;
  }

  Future<double?> get getTotalDiskSpace async {
    return DiskSpacePlusPlatform.instance.getTotalDiskSpace;
  }

  Future<double?> getFreeDiskSpaceForPath(String path) async {
    return DiskSpacePlusPlatform.instance.getFreeDiskSpaceForPath(path);
  }
}

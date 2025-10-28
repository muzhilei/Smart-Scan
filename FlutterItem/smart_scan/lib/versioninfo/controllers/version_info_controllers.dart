import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';


class version_info_controllers extends GetxController{

  var version_num = ''.obs;

  Future<void> getAppInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    String appName = packageInfo.appName;
    String packageName = packageInfo.packageName;
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;
    version_num.value = version;

    print('应用名称: $appName');
    print('包名: $packageName');
    print('版本号: $version');
    print('构建号: $buildNumber');
  }

}
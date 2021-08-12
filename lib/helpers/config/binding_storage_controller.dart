import 'package:get/instance_manager.dart';
import 'package:musicapp/helpers/config/storage_controller.dart';

class BindingStorageController implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StorageController());
  }
}

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class homecontroller extends GetxController {
  var imagepicker = ImagePicker();
  opencamera() async {
    var cam = await imagepicker.pickImage(source: ImageSource.camera);
  }
}

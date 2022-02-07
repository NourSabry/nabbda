import 'package:get/get.dart';
import 'package:nabbda/controller/base_controller.dart';
import 'package:nabbda/models/user_model.dart';
import 'package:nabbda/services/register_services.dart';

class RegisterController extends BaseController {
  final _services = RegisterServices();
  final firstName = ''.obs;
  final lastName = ''.obs;
  final password = ''.obs;
  final email = ''.obs;

  register() async {
    UserModel? userModel = await _services.register(
        UserModel(
          email: email.value,
          firstName: firstName.value,
          lastName: lastName.value,
        ),
        password.value);
  }
}

import 'package:dio/dio.dart';
import 'package:nabbda/models/user_model.dart';

class RegisterServices {
  final Dio _dio = Dio();

  Future<UserModel>? register(UserModel userModel, String password) async {
    Response response = await _dio.post(
        'http://gnppolicy-001-site9.itempurl.com/api/User/Register',
        data: {
          "firstName": userModel.firstName,
          "lastName": userModel.lastName,
          "mobileNumber": "01004479126",
          "gender": 0,
          "dateOfbirth": "1962-08-27T18:18:10.878Z",
          "email": userModel.email,
          "password": password
        });
    print(response.data);
    return userModel;
  }
}

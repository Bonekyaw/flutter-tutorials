import 'package:provider_arc/core/viewmodels/base_viewmodel.dart';
import 'package:provider_arc/core/services/authentication_service.dart';

class LoginViewModel extends BaseViewModel {
  AuthenticationService _authenticationService;

  LoginViewModel({AuthenticationService authenticationService})
      : _authenticationService = authenticationService;

  Future<bool> login(String userIdText) async {
    setBusy();
    var userId = int.tryParse(userIdText);
    var success = await _authenticationService.login(userId);
    setIdle();
    return success;
  }
}
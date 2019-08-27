import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'package:loginbloc/validator.dart';

class Bloc extends Object with Validator implements BaseBloc{
final _emailController = StreamController<String>();
final _passwordController = StreamController<String>();
Function(String) get emailChanged => _emailController.sink.add;
Function(String) get passwordChanged => _passwordController.sink.add;
Stream<String> get email=> _emailController.stream.transform(emailvalidator);
Stream<String> get password=> _passwordController.stream.transform(passwordvalidator);

Stream<bool> get submitCheeck => Observable.combineLatest2(email, password, (e,p)=> true);
submit(){
print("login page using bloc pattern");
}
@override
void dispose(){
  _emailController.close();
  _passwordController.close();
}

}



abstract class BaseBloc{
  void dispose();
}
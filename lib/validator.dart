import 'dart:async';

class Validator{
  var emailvalidator = StreamTransformer<String,String>.fromHandlers(
    handleData:(email,Sink){
if(email.contains("@")){
  Sink.add(email);
}else{
  Sink.addError("Email is not valid");
}
    } 
    );
   var passwordvalidator = StreamTransformer<String,String>.fromHandlers(
    handleData:(password,Sink){
if(password.length>4){
  Sink.add(password);
}else{
  Sink.addError("Passwoed length should be greater than 4 character");
}
    } 
    ); 
  
}
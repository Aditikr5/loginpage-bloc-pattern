import 'package:flutter/material.dart';
import 'package:loginbloc/bloc.dart';
import 'package:loginbloc/pagetwo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
    // is not restarted.
        primarySwatch: Colors.blue,
      ),
     debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends  StatelessWidget {
  
  changeThePage(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context)=> PageTwo())
    );
  }
  @override
  Widget build(BuildContext context) {
    final bloc=Bloc();
   
        return Scaffold(
         appBar: AppBar(
           title:Text("login page"),
    
         ),
         body: SingleChildScrollView(
         child: Container(
           height: MediaQuery.of(context).size.height,
           padding: EdgeInsets.all(15),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               StreamBuilder(
                stream: bloc.email,
              
               initialData: TextField(
                 onChanged: bloc.emailChanged,
                 keyboardType: TextInputType.emailAddress,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: "Enter  email",
                   labelText: "Email",
                   
                 ),
                 ), builder: (BuildContext context, AsyncSnapshot snapshot) {
                   
                  return TextField();
                 },
                ),
               SizedBox(
                 height: 20,
               ),
               StreamBuilder(
               stream: bloc.password,  
               initialData: TextField(
                 onChanged: bloc.passwordChanged,
                 keyboardType: TextInputType.text,
                 obscureText: true,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: "Enter  password",
                   labelText: "Password",
                 ),
               ), builder: (BuildContext context, AsyncSnapshot snapshot) {
                 return TextField();
               },
           ),
               SizedBox(
                 height: 20,
               ),
              StreamBuilder(
                stream: bloc.submitCheeck,
              initialData: RaisedButton(
                color: Colors.tealAccent,
                onPressed:null,
                child:Text("Submit") ,
              ), builder: (BuildContext context, AsyncSnapshot snapshot) {
                return RaisedButton(
                  onPressed: null,
                );
              },),
         ],
       ),
     ),
     ),
    );
  }
}


  


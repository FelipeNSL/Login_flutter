import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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
      home: WidgetLogin(),
    );
  }
}

class WidgetLogin extends StatefulWidget {
  @override
  _WidgetLoginState createState() => _WidgetLoginState();
}

class _WidgetLoginState extends State<WidgetLogin> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20);
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final senhaField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Senha",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final buttonlogin = ButtonTheme(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Color(0xff01A0C7),
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
    );

    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
              child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: <Widget>[
            /* Form(
              child:Column(
                children: [
                  TextFormField(
                    validator: (value){
                      if(value.length < 5){
                        return "Email muito curto";
                      }else if(!value.contains("@")){
                        return
                      }
                    },
                  )
                ],
              ) ), */
            SizedBox(
              height: 150,
              child: Image.asset('assets/login.jpg', fit: BoxFit.contain),
            ),
            SizedBox(height: 40.0),
            emailField,
            SizedBox(height: 40.0),
            senhaField,
            SizedBox(height: 40.0),
            buttonlogin
          ],
        ),
      ))),
    );
  }
}

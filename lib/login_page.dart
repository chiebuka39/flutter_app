import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  final formKey = GlobalKey<FormState>();

  String _email = "anelechichiebuka@gmail.com";
  String _password;

  void validateAndSave(){

    final form = formKey.currentState;
    if(form.validate()){
      form.save();
      print('Form is valid Email: $_email Password: $_password');
    }else {
      print('form is not valed');
    }


  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Login Demo'),
      ),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: new Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new TextFormField(
                decoration: new InputDecoration(labelText: 'Email'),
                validator: (value) => value.isEmpty ? 'Email can\'t be empty':null,
                onSaved: (value) => _email = value,
              ),
              new TextFormField(
                validator: (value) => value.isEmpty ? 'password can\'t be empty':null,
                decoration: InputDecoration(labelText: 'Password'),
                onSaved: (value) => _password = value,
                obscureText: true,
              ),
              new RaisedButton(onPressed: validateAndSave,

                child: new Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }

}
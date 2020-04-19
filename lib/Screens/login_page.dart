import 'package:flutter/material.dart';
import 'package:cod_nsit/Screens/feeds_page.dart';


class feedPage extends StatefulWidget {
  @override
  _feedPageState createState() => _feedPageState();
}

class _feedPageState extends State<feedPage> {
  final formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.orangeAccent, Colors.blue]),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Image(
              image: AssetImage('images/nsitlogo.png'),
            ),
            SizedBox(
              height: 30,
            ),
            Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email:',
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                    ),
                    validator: (input) =>
                    !input.contains('@') ? 'Not a valid Email' : null,
                    onSaved: (input) => _email = input,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password:',
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                    ),
                    validator: (input) => input.length < 8
                        ? 'You need at least 8 characters'
                        : null,
                    onSaved: (input) => _password = input,
                    obscureText: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: _submit,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          child: Text('Sign in'),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              onPressed: () {},
              color: Colors.orangeAccent,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              child: Text(
                'SignUp',
              ),
            )
          ],
        ),
      ),
    );
  }

  void _submit() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      print(_email);
      print(_password);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => feeds_page()),
      );
    }
  }
}

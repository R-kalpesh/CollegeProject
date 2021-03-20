import 'package:connect_kalpesh/pages/home_page.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jss Connect"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name:',
                        hintStyle: TextStyle(color: Colors.black),
                        alignLabelWithHint: true),
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    autofocus: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    autofocus: false,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'PassCode',
                        hintStyle: TextStyle(color: Colors.black),
                        alignLabelWithHint: true),
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  )
                ],
              ),
            ),
          ),
          Container(
            // color: Colors.green,
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width / 2,
            child: RaisedButton(
              color: Colors.green,
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Forget Passcode ?",
                    style: TextStyle(color: Colors.black, fontSize: 15)),
                SizedBox(
                  width: 20,
                ),
                Text("New Account",
                    style: TextStyle(color: Colors.black, fontSize: 15))
              ],
            ),
          )
        ],
      ),
    );
  }
}

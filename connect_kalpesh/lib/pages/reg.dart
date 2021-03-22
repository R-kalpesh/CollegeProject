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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String email;
  String name;
  String password;
  String branch;
  String sem;


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 80.0,
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.green,
              ),
            Padding(
              padding: EdgeInsets.symmetric(vertical:  10.0, horizontal:  10.0),
              child: Divider(),
            ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'College Mail ID ',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      ),
                    ),
                    border:OutlineInputBorder(),
                  ),
                  onChanged: (value){
                    setState(() {
                      email = value;
                    });
                  },
                )
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Name ',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        ),
                      ),
                      border:OutlineInputBorder(),
                    ),
                    onChanged: (value){
                      setState(() {
                        name = value;
                      });
                    },
                  )
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'password',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        ),
                      ),
                      border:OutlineInputBorder(),
                    ),
                    onChanged: (value){
                      setState(() {
                        password = value;
                      });
                    },
                  )
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Confirm Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        ),
                      ),
                      border:OutlineInputBorder(),
                    ),
                    onChanged: (value){
                      setState(() {
                        password = value;
                      });
                    },
                  )
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(

                      hintText: 'Branch',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        ),
                      ),
                      border:OutlineInputBorder(),
                    ),
                    onChanged: (value){
                      setState(() {
                        branch = value;
                      });
                    },
                  )
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: TextField(
                    decoration: InputDecoration(

                      hintText: 'Sem',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        ),
                      ),
                      border:OutlineInputBorder(),
                    ),
                    onChanged: (value){
                      setState(() {
                        sem = value;
                      });
                    },
                  )
              ),

              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
                child: MaterialButton(
                  child: Text('Register'),
                  color: Colors.green,
                  onPressed: (){

                  },
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}

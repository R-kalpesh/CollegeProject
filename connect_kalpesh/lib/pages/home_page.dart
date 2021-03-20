import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentState = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Interested post"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return blocks(context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.teal,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
        currentIndex: _currentState,
        onTap: (a) {
          setState(() {
            _currentState = a;
          });
        },
      ),
    );
  }

  Padding blocks(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.75,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.withOpacity(0.5),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.black,
                      child: Text(
                        "A",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "User name",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                height: 300,
                width: 300,
                color: Colors.amber,
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "DESCRIPTION:\nIf you are trying to perform a hit test during the layout phase itself, make sure you only hit test nodes that have completed layout (e.g. the node's children,",
                    style: TextStyle(fontSize: 20),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.local_activity_rounded),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(Icons.add),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(Icons.repeat_rounded)
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Card(
//                 child: Column(
//                   children: [
                    // Container(
                    //   height: 300,
                    //   color: Colors.red,
                    // ),
                    // ListTile(
                    //   title: Text(
                    //     "Description:\nALL THE USERS ARE REQUESTED TO REGISTER FOR USERNAME AND PASSWORD FOR BOTH WIRED AND WIRELESS INTERNET ACCESS BY GIVING USN NUMBER FOR STUDENTS AND EPF NUMBER FOR STAFF AS USERNAME ",
                    //     textAlign: TextAlign.justify,
                    //   ),
                    // ),
                    // ListTile(
                    //   leading: Text(""),
                    //   trailing: Row(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    //       Icon(Icons.local_activity_rounded),
                    //       SizedBox(
                    //         width: 30,
                    //       ),
                    //       Icon(Icons.add),
                    //       SizedBox(
                    //         width: 30,
                    //       ),
                    //       Icon(Icons.repeat_rounded)
                    //     ],
                    //   ),
                    // )
//                   ],
//                 ),
//               ),
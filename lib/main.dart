import 'package:cafe/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: const Color(0xFFFAF4EE),
        appBar: AppBar(
          actions: const [
            Icon(
              Icons.search,
              size: 40,
              color: Colors.black,
            )
          ],
          leading: Icon(
            Icons.list,
            size: 40,
            color: Colors.black,
          ),
          //Ink.image(image: const AssetImage("images/bar.png")),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            SafeArea(
              child: Container(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'It\'s Great ',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontFamily: 'Sen')),
                    TextSpan(
                      text: 'Day for Coffee.',
                      style: TextStyle(
                          fontSize: 40,
                          color: Color(0xFFB98875),
                          fontFamily: 'Sen'),
                    )
                  ]),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        maxRadius: 40.0,
                        child: Ink.image(
                          image: AssetImage("images/Espresso.png"),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      title: Text(
                        'Espresso',
                        style: TextStyle(fontFamily: 'Sen', fontSize: 25),
                      ),
                      trailing: Icon(
                        Icons.arrow_right,
                      ),
                    ),
                    Divider(
                      height: 30.0,
                      color: Colors.transparent,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        maxRadius: 40.0,
                        child: Ink.image(
                          image: AssetImage("images/Cappuccino.png"),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      title: Text(
                        'Cappuccino',
                        style: TextStyle(fontFamily: 'Sen', fontSize: 25),
                      ),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    Divider(
                      height: 30.0,
                      color: Colors.transparent,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return second();
                            }));
                      },
                      leading: CircleAvatar(
                        maxRadius: 40.0,
                        child: Ink.image(
                          image: AssetImage("images/macciato.png"),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      title: Text(
                        'macciato',
                        style: TextStyle(fontFamily: 'Sen', fontSize: 25),
                      ),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    Divider(
                      height: 30.0,
                      color: Colors.transparent,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        maxRadius: 40.0,
                        child: Ink.image(
                          image: AssetImage("images/Mocha.png"),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      title: Text(
                        'Mocha',
                        style: TextStyle(fontFamily: 'Sen', fontSize: 25),
                      ),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    Divider(
                      height: 30.0,
                      color: Colors.transparent,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        maxRadius: 40.0,
                        child: Ink.image(
                          image: AssetImage("images/latte.png"),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      title: Text(
                        'latte',
                        style: TextStyle(fontFamily: 'Sen', fontSize: 25),
                      ),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              showSelectedLabels: false,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 40,
                    color: Color(0xFFC28E79),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.location_on,
                    size: 40,
                    color: Color(0xFFC28E79),
                  ),
                  label: 'Business',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    MyFlutterApp.coffee_cup,
                    size: 30,
                    color: Color(0xFFC28E79),
                  ),
                  label: 'School',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.supervisor_account_rounded,
                    size: 40,
                    color: Color(0xFFC28E79),
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ));
  }
}
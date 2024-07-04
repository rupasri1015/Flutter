import 'package:coffee_card/cover_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

//_myFirstWidget
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Scaffold
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 219, 148, 16),
              ),
              child: Text(
                'Welcome to Cafe Coffee',
                style: TextStyle(
                  color: Color.fromARGB(255, 99, 12, 9),
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: Text('1'),
            ),
            ListTile(
              title: Text("All Mail Inboxes"),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text("Primary"),
            ),
            ListTile(
              title: Text("Social"),
            ),
            ListTile(
              title: Text("Promotions"),
            ),
          ],
        ),
      ),
      // body
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/Onboarding.jpg'),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 1.7,
              left: MediaQuery.of(context).size.width / 12,
              right: MediaQuery.of(context).size.width / 12,
              child: Column(
                children: [
                  const SizedBox(
                    // width: MediaQuery.of(context).size.width * 0.7,
                    child: Column(
                      children: [
                        Text(
                          "Fall in Love with Coffee in Blissful Delight!",
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 38,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CoverPage(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(12), // Rounded corners
                        ),
                      ),
                      side: MaterialStateProperty.all<BorderSide>(
                          BorderSide.none),
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(MediaQuery.of(context).size.width / 0.9, 65)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF9e633e)),
                      //  Color(0x009e633e),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    //)
  }
}

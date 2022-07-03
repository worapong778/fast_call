import 'package:fast_app/views/Page2_ui.dart';
import 'package:fast_app/views/page1_ui.dart';
import 'package:fast_app/views/page3_ui.dart';
import 'package:fast_app/views/page5_ui.dart';
import 'package:flutter/material.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        title: Text(
          'สายด่วนฉุกเฉิน',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                'assets/images/img3.png',
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
              onPressed: () {
                var rount = MaterialPageRoute(
                  builder: (context) => Page1UI(),
                );
                Navigator.of(context).push(rount);
              },
              child: Text(
                'รถเสีย สอบถามเส้นทาง',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                fixedSize: Size(
                  MediaQuery.of(context).size.width - 120.0,
                  50.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                var rount = MaterialPageRoute(
                  builder: (context) => Page2UI(),
                );
                Navigator.of(context).push(rount);
              },
              child: Text(
                'ประกันภัย',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  //color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                fixedSize: Size(
                  MediaQuery.of(context).size.width - 120.0,
                  50.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                var rount = MaterialPageRoute(
                  builder: (context) => Page3UI(),
                );
                Navigator.of(context).push(rount);
              },
              child: Text(
                'เจ็บป่วยฉุกเฉิน',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  //color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                fixedSize: Size(
                  MediaQuery.of(context).size.width - 120.0,
                  50.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                var rount = MaterialPageRoute(
                  builder: (context) => Page5UI(),
                );
                Navigator.of(context).push(rount);
              },
              child: Text(
                'แจ้งเหตุด่วน เหตุร้าย',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  //color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                fixedSize: Size(
                  MediaQuery.of(context).size.width - 120.0,
                  50.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:fast_app/models/page5_list.dart';
import 'package:fast_app/views/page5_detail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page5UI extends StatefulWidget {
  const Page5UI({Key? key}) : super(key: key);

  @override
  State<Page5UI> createState() => _Page5UIState();
}

class _Page5UIState extends State<Page5UI> {
  List<Page5List> page5uiInfo = [
    Page5List(
      name: 'เหตุด่วนเหตุร้าย',
      mobile: '191',
    ),
    Page5List(
      name: 'เหตุฉุกเฉินกลาง',
      mobile: '911',
    ),
    Page5List(
      name: 'แจ้งอัคคีภัย สัตว์เข้าบ้าน',
      mobile: '199',
    ),
    Page5List(
      name: 'อุบัติเหตุทางน้ำ',
      mobile: '1196',
    ),
    Page5List(
      name: 'โทรหากู้ชีพ',
      mobile: '1554 ',
    ),
    Page5List(
      name: 'แจ้งคนหาย',
      mobile: '1300',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'แจ้งเหตุด่วน เหตุร้าย',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.green[800],
                  );
                },
                itemCount: page5uiInfo.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      FontAwesomeIcons.phoneFlip,
                      color: Colors.green[500],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page5Detail(
                            name: page5uiInfo[index].name!,
                            mobile: page5uiInfo[index].mobile!,
                          ),
                        ),
                      );
                    },
                    title: Text(
                      page5uiInfo[index].name!,
                    ),
                    subtitle: Text(
                      page5uiInfo[index].mobile!,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.green[800],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:fast_app/models/page1_list.dart';
import 'package:fast_app/views/page1_detail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Page1UI extends StatefulWidget {
  const Page1UI({Key? key}) : super(key: key);

  @override
  State<Page1UI> createState() => _Page1UIState();
}

class _Page1UIState extends State<Page1UI> {
  List<Page1List> page1uiInfo = [
    Page1List(
      name: 'ตำรวจทางหลวง',
      mobile: '1193',
    ),
    Page1List(
      name: 'กรมทางหลวงชนบท',
      mobile: '1146',
    ),
    Page1List(
      name: 'เจ้าหน้าที่ดับเพลิง',
      mobile: '199',
    ),
    Page1List(
      name: 'สอบถามข้อมูลจราจร',
      mobile: '1197',
    ),
    Page1List(
      name: 'สายด่วนกรมทางหลวง',
      mobile: '1586',
    ),
    Page1List(
      name: 'ตำรวจท่องเที่ยว',
      mobile: '1155',
    ),
    Page1List(
      name: 'การทางพิเศษแหง่ประเทศไทย',
      mobile: '1543',
    ),
    Page1List(
      name: 'ศูนย์ปลอดภัยคมนาคม',
      mobile: '1356',
    ),
    Page1List(
      name: 'สถานีวิทยุ จส.100',
      mobile: '1137',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'รถเสีย สอบถามเส้นทาง',
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
                itemCount: page1uiInfo.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      FontAwesomeIcons.phoneFlip,
                      color: Colors.pink[500],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page1Detail(
                            name: page1uiInfo[index].name!,
                            mobile: page1uiInfo[index].mobile!,
                          ),
                        ),
                      );
                    },
                    title: Text(
                      page1uiInfo[index].name!,
                    ),
                    subtitle: Text(
                      page1uiInfo[index].mobile!,
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

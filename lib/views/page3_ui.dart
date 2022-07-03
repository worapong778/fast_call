import 'package:fast_app/models/page3_list.dart';
import 'package:fast_app/views/page3_detail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page3UI extends StatefulWidget {
  const Page3UI({Key? key}) : super(key: key);

  @override
  State<Page3UI> createState() => _Page3UIState();
}

class _Page3UIState extends State<Page3UI> {
  List<Page3List> page3uiInfo = [
    Page3List(
      name: 'เจ็บป่วยฉุกเฉิน',
      mobile: '1669',
    ),
    Page3List(
      name: 'กรมควบสคุมโรค',
      mobile: '1422',
    ),
    Page3List(
      name: 'สายด่วนศูนย์ข้อมูล COVID-19',
      mobile: '1111',
    ),
    Page3List(
      name: 'โรงพยาบาลเวชธานี ฉุกเฉิน 24 ชั่วโมง',
      mobile: '027340001',
    ),
    Page3List(
      name: 'หน่วยแพทย์กู้ชีวิต วชิรพยาบาล',
      mobile: '1554 ',
    ),
    Page3List(
      name: 'โรงพยาบาลตำรวจ',
      mobile: '1691  ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'เจ็บป่วยฉุกเฉิน',
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
                itemCount: page3uiInfo.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      FontAwesomeIcons.phoneFlip,
                      color: Colors.orange[500],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page3Detail(
                            name: page3uiInfo[index].name!,
                            mobile: page3uiInfo[index].mobile!,
                          ),
                        ),
                      );
                    },
                    title: Text(
                      page3uiInfo[index].name!,
                    ),
                    subtitle: Text(
                      page3uiInfo[index].mobile!,
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

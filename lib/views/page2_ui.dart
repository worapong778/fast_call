import 'package:fast_app/models/page2_list.dart';
import 'package:fast_app/views/page2_detail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page2UI extends StatefulWidget {
  const Page2UI({Key? key}) : super(key: key);

  @override
  State<Page2UI> createState() => _Page2UIState();
}

class _Page2UIState extends State<Page2UI> {
  List<Page2List> page2uiInfo = [
    Page2List(
      name: 'กรุงเทพประกันภัย',
      mobile: '1620',
    ),
    Page2List(
      name: 'เมืองไทย ประกันภัย',
      mobile: '1484',
    ),
    Page2List(
      name: 'วิริยะประกันภัย',
      mobile: '1557',
    ),
    Page2List(
      name: 'สินมั่นคง',
      mobile: '1596',
    ),
    Page2List(
      name: 'เอเชียประกันภัย',
      mobile: '028693333',
    ),
    Page2List(
      name: 'อลิอันซ์ ซีพี',
      mobile: '026389333',
    ),
    Page2List(
      name: 'แอล เอ็ม จี',
      mobile: '1790',
    ),
    Page2List(
      name: 'เอราวัณ',
      mobile: '022240056',
    ),
    Page2List(
      name: 'คุ้มภัยโตเกียวมารีน',
      mobile: '022578080',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'ประกันภัย',
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
                itemCount: page2uiInfo.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      FontAwesomeIcons.phoneFlip,
                      color: Colors.blue[500],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page2Detail(
                            name: page2uiInfo[index].name!,
                            mobile: page2uiInfo[index].mobile!,
                          ),
                        ),
                      );
                    },
                    title: Text(
                      page2uiInfo[index].name!,
                    ),
                    subtitle: Text(
                      page2uiInfo[index].mobile!,
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

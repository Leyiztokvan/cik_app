import 'package:app_vorlage_prototyp/TESTs/test_checkbox_tile.dart';
import 'package:flutter/material.dart';

class XTestPanal extends StatefulWidget {
  const XTestPanal({Key? key}) : super(key: key);

  @override
  _XTestPanalState createState() => _XTestPanalState();
}

class _XTestPanalState extends State<XTestPanal> {
  late final XCheckboxItem xCheckboxItem;
  late bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 200,
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: itemData.length,
        itemBuilder: (context, index) {
          return Container(
            // margin: EdgeInsets.only(bottom: 10.0),
            child: ExpansionPanelList(
              animationDuration: Duration(milliseconds: 500),
              dividerColor: Colors.red,
              expandedHeaderPadding: EdgeInsets.only(bottom: 0.0),
              elevation: 1,
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        itemData[index].headerItem,
                        style: TextStyle(
                          color: itemData[index].colorsItem,
                          fontSize: 18,
                        ),
                      ),
                    );
                  },
                  body: Container(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: xcheckbox
                              .map(
                                (e) => CheckboxListTile(
                                  title: Text(xcheckbox[index].title),
                                  value: checkedValue,
                                  onChanged: (newValue) {
                                    setState(() {
                                      checkedValue = newValue!;
                                    });
                                  },
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                ),
                              )
                              .toList(),
                          // [
                          //   CheckboxListTile(
                          //     title: Text(xcheckbox[index].title),
                          //     value: checkedValue,
                          //     onChanged: (newValue) {
                          //       setState(() {
                          //         checkedValue = newValue!;
                          //       });
                          //     },
                          //     controlAffinity: ListTileControlAffinity.leading,
                          //   ),
                          // ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: xcheckbox
                              .map(
                                (e) => CheckboxListTile(
                                  title: Text(xcheckbox[index].title),
                                  value: checkedValue,
                                  onChanged: (newValue) {
                                    setState(() {
                                      checkedValue = newValue!;
                                    });
                                  },
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                  isExpanded: itemData[index].expanded,
                )
              ],
              expansionCallback: (int item, bool status) {
                setState(() {
                  itemData[index].expanded = !itemData[index].expanded;
                });
              },
            ),
          );
        },
      ),
    );
  }
}

class ItemModel {
  bool expanded;
  String headerItem;
  String discription;
  Color colorsItem;

  ItemModel({
    this.expanded: false,
    required this.headerItem,
    required this.discription,
    required this.colorsItem,
  });
}

List<ItemModel> itemData = <ItemModel>[
  ItemModel(
    headerItem: 'Android',
    discription:
        "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.",
    colorsItem: Colors.green,
  ),
  ItemModel(
    headerItem: 'iOS',
    discription:
        "iOS is a mobile operating system created and developed by Apple Inc. exclusively for its hardware.",
    colorsItem: Colors.grey,
  ),
  ItemModel(
    headerItem: 'Windows',
    discription:
        "Microsoft Windows, commonly referred to as Windows, is a group of several proprietary graphical operating system families, all of which are developed and marketed by Microsoft. ",
    colorsItem: Colors.blue,
  ),
  ItemModel(
    headerItem: 'Linux',
    discription:
        "Linux is a family of open-source Unix-like operating systems based on the Linux kernel, an operating system.",
    colorsItem: Colors.orange,
  ),
];

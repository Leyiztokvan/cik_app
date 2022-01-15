import 'package:app_vorlage_prototyp/config/modules/cards/card_template.dart';
import 'package:app_vorlage_prototyp/config/modules/cards/class_card_components.dart';
import 'package:app_vorlage_prototyp/config/modules/lists/card_lists.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class XCardScreensList extends StatefulWidget {
  const XCardScreensList({Key? key}) : super(key: key);

  @override
  _XCardScreensListState createState() => _XCardScreensListState();
}

class _XCardScreensListState extends State<XCardScreensList> {
  final GlobalKey _listKeyCardScreensList = GlobalKey();
  List<Widget> xcardScreenComponents = [];

  @override
  void initState() {
    super.initState();
    _addCardComponents();
  }

  void _addCardComponents() {
    xcardComponents.forEach((XCardComponents cardComponents) {
      xcardScreenComponents.add(_buildScreens(cardComponents));
    });
  }

  Widget _buildScreens(XCardComponents cComponents) {
    return XCardTemplate(
      cComponents: cComponents,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width * 1,
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
              //  10,
            );
          },
          scrollDirection: Axis.horizontal,
          key: _listKeyCardScreensList,
          itemCount: xcardScreenComponents.length,
          itemBuilder: (context, index) {
            return xcardScreenComponents[index];
          }),
    );
  }
}

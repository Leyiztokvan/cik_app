import 'package:app_vorlage_prototyp/config/modules/lists/category_list.dart';
import 'package:app_vorlage_prototyp/config/modules/cards/category_card.dart';
import 'package:app_vorlage_prototyp/screens/home/home_body_components/category_screen_components/category_components.dart';
import 'package:flutter/material.dart';

class XCategoryScreensList extends StatefulWidget {
  const XCategoryScreensList({Key? key}) : super(key: key);

  @override
  _XCategoryScreensListState createState() => _XCategoryScreensListState();
}

class _XCategoryScreensListState extends State<XCategoryScreensList> {
  List<Widget> xcategroyScreenComponents = [];

  final GlobalKey _listKeyCategoryScreensList = GlobalKey();

  @override
  void initState() {
    super.initState();
    _addCategoryComponents();
  }

////IF THIS DOES NOT WORK USE THE FUNCTION UNDERNEATH
  void _addCategoryComponents() {
    for (var categories in xcategories) {
      xcategroyScreenComponents.add(_buildScreens(categories));
    }
  }
  // void _addCategoryComponents() {
  //   categories.forEach((XCategoryComponents categories) {
  //     categroyScreenComponents.add(_buildScreens(categories));
  //   });
  // }

  Widget _buildScreens(XCategoryComponents xcategoryComponents) {
    return XCategoryCard(
      context: context,
      xcategoryComponents: xcategoryComponents,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width * 1,
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
              // 10,
            );
          },
          scrollDirection: Axis.horizontal,
          key: _listKeyCategoryScreensList,
          itemCount: xcategroyScreenComponents.length,
          itemBuilder: (context, index) {
            return xcategroyScreenComponents[index];
          }),
    );
  }
}

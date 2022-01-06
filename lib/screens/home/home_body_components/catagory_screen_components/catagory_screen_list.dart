import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:app_vorlage_prototyp/config/modules/lists/catagory_list.dart';
import 'package:app_vorlage_prototyp/screens/home/sub_screens/catagory_screen.dart';
import 'package:flutter/material.dart';
import 'catagory_list.dart';

class XCategoryScreensList extends StatefulWidget {
  const XCategoryScreensList({Key? key}) : super(key: key);

  @override
  _XCategoryScreensListState createState() => _XCategoryScreensListState();
}

class _XCategoryScreensListState extends State<XCategoryScreensList> {
  List<Widget> categroyScreenComponents = [];

  final GlobalKey _listKeyCategoryScreensList = GlobalKey();

  @override
  void initState() {
    super.initState();
    _addCategoryComponents();
  }

  void _addCategoryComponents() {
    categories.forEach((XCategory categories) {
      categroyScreenComponents.add(_buildScreens(categories));
    });
  }

  Widget _buildScreens(XCategory category) {
    return XCategoryCardTemplate(
      context: context,
      category: category,
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
              width: 10,
            );
          },
          scrollDirection: Axis.horizontal,
          key: _listKeyCategoryScreensList,
          itemCount: categroyScreenComponents.length,
          itemBuilder: (context, index) {
            return categroyScreenComponents[index];
          }),
    );
  }
}

class XCategoryCardTemplate extends StatelessWidget {
  final XCategory category;
  const XCategoryCardTemplate({
    Key? key,
    required this.context,
    required this.category,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    XCategoryDetailsScreen(ccategory: category)));
      },
      child: Container(
        height: 100,
        width: 80,
        decoration: BoxDecoration(borderRadius: rPrimaryRadiusAll),
        child: Card(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(
                        top: mPrimaryMargin, bottom: mPrimaryMargin),
                    decoration: BoxDecoration(
                        borderRadius: rPrimaryRadiusAll,
                        // // border can be used (optional): e.g. when the image background is not transparent
                        // border: Border.all(),
                        image: DecorationImage(
                            image: AssetImage(category.categoryImage),
                            fit: BoxFit.fitWidth)),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(
                    left: mPrimaryMargin,
                    top: mPrimaryMargin,
                    right: mPrimaryMargin,
                  ),
                  child: FittedBox(
                    child: Text(
                      category.title,
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

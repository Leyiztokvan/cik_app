import 'package:app_vorlage_prototyp/components/expansion_panel.dart';
import 'package:app_vorlage_prototyp/config/modules/lists/expansion_panel_item_list.dart';
import 'package:flutter/material.dart';

class XExpansionPanal extends StatefulWidget {
  const XExpansionPanal({Key? key}) : super(key: key);

  @override
  _XExpansionPanalState createState() => _XExpansionPanalState();
}

class _XExpansionPanalState extends State<XExpansionPanal> {
  late bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: itemData.length,
            itemBuilder: (context, index) {
              return Container(
                  child: ExpansionPanelList(
                      animationDuration: const Duration(milliseconds: 500),
                      // dividerColor: Colors.red,
                      expandedHeaderPadding: const EdgeInsets.only(bottom: 0.0),
                      elevation: 1,
                      children: [
                        ExpansionPanel(
                          canTapOnHeader: true,
                          headerBuilder:
                              (BuildContext context, bool isExpanded) {
                            return Container(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                itemData[index].headerItem,
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            );
                          },
                          body: Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 20),
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  child: const XExpansionPanelBody(),
                                ),
                              ],
                            ),
                          ),
                          isExpanded: itemData[index].expanded,
                        ),
                      ],
                      expansionCallback: (int item, bool status) {
                        setState(() {
                          itemData[index].expanded = !itemData[index].expanded;
                        });
                      }));
            }));
  }
}

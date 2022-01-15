import 'package:app_vorlage_prototyp/config/modules/lists/expansion_panel_item_list.dart';
import 'package:flutter/material.dart';

class XExpansionPanelBody extends StatefulWidget {
  const XExpansionPanelBody({Key? key}) : super(key: key);

  @override
  _XExpansionPanelBodyState createState() => _XExpansionPanelBodyState();
}

class _XExpansionPanelBodyState extends State<XExpansionPanelBody> {
  late List<bool> _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(
        // List<bool> length must equal == itemCount
        itemData.length,
        // 6,
        false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount:
                // itemCount length must equal == List<bool>
                // 6,
                itemData.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                child: CheckboxListTile(
                  dense: true,
                  title: Text(
                    "Option $index",
                    // itemData[index].headerItem
                    style: Theme.of(context).textTheme.overline,
                  ),
                  value: _isChecked[index],
                  onChanged: (val) {
                    setState(
                      () {
                        _isChecked[index] = val!;
                      },
                    );
                  },
                  // selectedTileColor: Theme.of(context).colorScheme.background,
                  activeColor: Theme.of(context).colorScheme.onBackground,
                  checkColor: Theme.of(context).colorScheme.primary,
                ),
              );
            }));
  }
}

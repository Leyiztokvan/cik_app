import 'package:flutter/material.dart';

class XCheckboxListTile extends StatefulWidget {
  const XCheckboxListTile({
    Key? key, required this.box,
  }) : super(key: key,
  
  );
final String box;

  @override
  State<XCheckboxListTile> createState() => _XCheckboxListTileState();
}

class _XCheckboxListTileState extends State<XCheckboxListTile> {
  late bool checkedValue = false;
  late final String title;
  late final XCheckboxItem xCheckboxItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: CheckboxListTile(
        title: Text('${xCheckboxItem.title}'),
        value: checkedValue,
        onChanged: (newValue) {
          setState(() {
            checkedValue = newValue!;
          });
        },
        controlAffinity:
            ListTileControlAffinity.leading, //  <-- leading Checkbox
      ),
    );
  }
}

class XCheckboxItem {
  XCheckboxItem({
    this.expanded = false,
    required this.title,
  });

  final String title;
  bool expanded;
}

List<XCheckboxItem> xcheckbox = [
  XCheckboxItem(title: "titile 1"),
  XCheckboxItem(title: "titile 2"),
  XCheckboxItem(title: "titile 3"),
  XCheckboxItem(title: "titile 4"),
];

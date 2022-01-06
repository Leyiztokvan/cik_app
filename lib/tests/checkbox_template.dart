import 'package:flutter/material.dart';

class XLabeledCheckbox extends StatelessWidget {
  const XLabeledCheckbox({
    Key? key,
    required this.checkboxItem,
    // required this.padding,
    this.value = false,
    required this.onChanged,
  }) : super(key: key);

  final CheckboxItem checkboxItem;
  //final EdgeInsets padding;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: EdgeInsets.all(5),
        //padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(checkboxItem.label)),
            Checkbox(
              shape: CircleBorder(),
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CheckboxItem {
  CheckboxItem({
    this.expanded = false,
    required this.label,
  });

  final String label;
  bool expanded;
}

List checkboxItems = [
  CheckboxItem(
    label: 'label',
  ),
  CheckboxItem(
    label: 'label',
  ),
  CheckboxItem(
    label: 'label',
  ),
  CheckboxItem(
    label: 'label',
  ),
];

import 'package:app_vorlage_prototyp/config/modules/border_variables_module.dart';
import 'package:app_vorlage_prototyp/config/palettes/color_palette.dart';
import 'package:flutter/material.dart';

class XSearchBar extends StatelessWidget {
  final _controller = TextEditingController();
  XSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: transparent,
        borderRadius: rSecondaryRadiusAll,
      ),
      child: Center(
        child: TextField(
          controller: _controller,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.overline,
          // TextStyle(),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
            prefixIcon: Icon(
              Icons.search,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.close,
                size: iSecondary - 2,
              ),
              onPressed: _controller.clear,
            ),
            suffixIconConstraints: BoxConstraints(minWidth: 28),
            prefixIconConstraints: BoxConstraints(minWidth: 36),
          ),
        ),
      ),
    );
  }
}

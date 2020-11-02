import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class Footer123 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new FooterView(
        children: [],
        footer: Footer(
          child: Text("Hello"),
        ));
  }
}

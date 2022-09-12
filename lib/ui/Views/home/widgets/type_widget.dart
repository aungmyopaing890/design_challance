import 'package:flutter/material.dart';

class TypeButtonWidget extends StatelessWidget {
  final Color textColor;
  final Color buttonColor;
  final String text;

  const TypeButtonWidget(this.buttonColor, this.textColor, this.text,
      {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
          borderRadius: BorderRadius.circular(13.0),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
                color: buttonColor, borderRadius: BorderRadius.circular(15)),
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          )),
    );
  }
}

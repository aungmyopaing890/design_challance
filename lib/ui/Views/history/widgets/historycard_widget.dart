import 'package:flutter/material.dart';

class HistoryCardWidget extends StatelessWidget {
  final String weekday;
  final String day;
  final Color textColor;
  final Color buttonColor;

  const HistoryCardWidget(
      this.weekday, this.day, this.textColor, this.buttonColor,
      {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(weekday),
          InkWell(
              borderRadius: BorderRadius.circular(13.0),
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: buttonColor, borderRadius: BorderRadius.circular(5)),
                child: Text(
                  day,
                  style: TextStyle(color: textColor),
                ),
              )),
        ],
      ),
    );
  }
}

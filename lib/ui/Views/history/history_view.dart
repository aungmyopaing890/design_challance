import 'package:designchallange1/ui/Views/history/widgets/historycard_widget.dart';
import 'package:flutter/material.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20.0,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          toolbarHeight: 60,
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 1,
                  ),
                  const Text("July",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      )),
                  Ink(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(13.0),
                      onTap: () {},
                      child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.blue,
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Column(
          children: [
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  children: const <Widget>[
                    HistoryCardWidget("MON", "24", Colors.black, Colors.white),
                    HistoryCardWidget("TUE", "25", Colors.black, Colors.white),
                    HistoryCardWidget(
                        "WED", "26", Colors.white, Colors.blueAccent),
                    HistoryCardWidget("THU", "27", Colors.black, Colors.white),
                    HistoryCardWidget("FRI", "28", Colors.black, Colors.white),
                    HistoryCardWidget("SAT", "29", Colors.black, Colors.white),
                    HistoryCardWidget("SUN", "30", Colors.black, Colors.white),
                  ],
                )),
          ],
        )));
  }
}

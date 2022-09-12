import 'package:designchallange1/core/viewmodels/home_model.dart';
import 'package:designchallange1/ui/Views/base_view.dart';
import 'package:designchallange1/ui/Views/home/widgets/card_wiedget.dart';
import 'package:designchallange1/ui/Views/home/widgets/type_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
        onModelReady: (model) async => await model.fetchProducts(),
        builder: (BuildContext context, HomeModel model, Widget? child) =>
            Scaffold(
              appBar: AppBar(
                toolbarHeight: 60,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Ink(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(13.0),
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/history',
                          );
                        },
                        child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Image(
                              image: AssetImage('assets/left-align1.png'),
                              height: 30,
                              width: 30,
                            )),
                      ),
                    ),
                    Ink(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(13.0),
                        onTap: () {},
                        child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Image(
                              image: AssetImage('assets/profile.png'),
                              height: 35,
                              width: 35,
                            )),
                      ),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Nike Collection",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Everything you need at just one place.",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.grey),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: TextField(
                      cursorColor: Colors.grey.shade200,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(
                              color: Colors.grey.shade200, width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(
                              color: Colors.grey.shade200, width: 0.0),
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                        hintText: 'Search here ..',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 5),
                      height: 40,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(8),
                        children: const <Widget>[
                          TypeButtonWidget(Colors.black, Colors.white, "All"),
                          TypeButtonWidget(
                              Colors.white, Colors.black, "Jordan"),
                          TypeButtonWidget(
                              Colors.white, Colors.black, "Running"),
                          TypeButtonWidget(Colors.white, Colors.black, "Golf"),
                          TypeButtonWidget(
                              Colors.white, Colors.black, "Casual"),
                        ],
                      )),
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: model.products.length,
                        itemBuilder: (context, index) =>
                            CardWidget(model.products[index])),
                  )
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: ' ',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag),
                    label: ' ',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    label: ' ',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: ' ',
                  ),
                ],
                currentIndex: 0,
                unselectedItemColor: Colors.grey,
                selectedItemColor: Colors.black,
              ),
            ));
  }
}

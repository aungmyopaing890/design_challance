import 'package:designchallange1/core/models/product.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Product product;
  const CardWidget(this.product, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: product.productColor,
        child: Row(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                  child: Image(
                    image: AssetImage(product.imageLink),
                    height: 150,
                    width: 130,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    margin: const EdgeInsets.only(left: 20, top: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      product.name.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    )),
                Container(
                  width: 122,
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                      text: product.description.toString(),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${r"$"} ${product.price}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: const Text(
                          "Buy",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:belanja_sayuran_ui/product_model.dart';
import 'package:belanja_sayuran_ui/size.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  const ProductDetail({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: beliBottom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SizedBox(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 10),
              height: SizeConfig.screenHeight / 1.7,
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(product.image), fit: BoxFit.cover)),
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: RawMaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      constraints: BoxConstraints(minWidth: 10, maxWidth: 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fillColor: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.arrow_back),
                    )),
                    Expanded(
                        child: Text(
                      "Detail",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                    Flexible(
                        flex: 3,
                        child: RawMaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          constraints:
                              BoxConstraints(maxWidth: 50, minWidth: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Colors.white,
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.favorite_outline_outlined),
                        ))
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              transform: Matrix4.translationValues(0, -30, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.grey),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 50,
                        height: 6,
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.verticalSize * 3.5,
                    ),
                    Text(
                      product.title,
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 26),
                    ),
                    SizedBox(
                      height: SizeConfig.verticalSize * 2.5,
                    ),
                    Row(
                      children: [
                        Text(
                          product.price,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.verticalSize * 2.5,
                    ),
                    Text(
                      product.description,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    )
                  ]),
            ))
          ],
        ),
      ),
    );
  }

  ElevatedButton beliBottom() {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          'Beli',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ));
  }
}

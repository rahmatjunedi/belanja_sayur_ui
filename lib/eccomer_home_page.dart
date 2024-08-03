import 'package:belanja_sayuran_ui/class_category.dart';
import 'package:belanja_sayuran_ui/detail_product.dart';
import 'package:belanja_sayuran_ui/product_model.dart';
import 'package:belanja_sayuran_ui/size.dart';
import 'package:belanja_sayuran_ui/warna.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EccomerceHomePage extends StatefulWidget {
  const EccomerceHomePage({super.key});

  @override
  State<EccomerceHomePage> createState() => _EccomerceHomePageState();
}

class _EccomerceHomePageState extends State<EccomerceHomePage> {
  int selectedIndex = 0;
  List<List<Product>> selectedCategory = [buah, sayur, sayuranhujau, baahpedas];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(left: 2),
          child: RawMaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            constraints: BoxConstraints(minWidth: 8),
            onPressed: () {},
            child: SvgPicture.asset(
              "images/menu-alt-02-svgrepo-com.svg",
              width: 30,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          // Judul
          Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              "Temukan Jenis dan Manfaat Pensiun",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          // Input data pencarian
          Padding(
            padding: EdgeInsets.all(25),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.white)),
                  contentPadding: EdgeInsets.all(15),
                  filled: true,
                  hintText: "Pencarian",
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  fillColor: Colors.grey[200]),
            ),
          ),
          selectCategory(),
          Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                Text(
                  "Populer",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
                Spacer(),
                Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          // list category
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(selectedCategory[selectedIndex].length,
                    (index) {
                  final product = selectedCategory[selectedIndex][index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ProductDetail(product: product)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: (SizeConfig.screenWidth - 80) / 2,
                      height: SizeConfig.verticalSize * 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                product.image,
                              ),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        product.title,
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 18,
                                      ),
                                      Text(
                                        product.price,
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                    bottom: 5,
                                    right: 10,
                                    child: RawMaterialButton(
                                      onPressed: () {},
                                      constraints: BoxConstraints(minWidth: 0),
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(5),
                                      fillColor: primary,
                                      child: Icon(Icons.add,
                                          size: 16, color: Colors.white),
                                    ))
                              ],
                            )
                          ]),
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }

  SizedBox selectCategory() {
    return SizedBox(
      height: SizeConfig.verticalSize * 7.5,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 20),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      backgroundColor: selectedIndex == index
                          ? primary
                          : const Color.fromRGBO(238, 238, 238, 1)),
                  onPressed: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Text(
                    categoryList[index].title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color:
                            selectedIndex == index ? Colors.white : textGray),
                  )),
            );
          }),
    );
  }
}
